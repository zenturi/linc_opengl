
import hx.strings.StringBuilder;

using StringTools;

typedef CommandProto = {

    /**
     * Name of the function.
     */
    var name : String;

    /**
     * Parameter type.
     * Return type is an array since there are potentially two parts to a return type.
     * 
     * [0] OpenGL / native return type.
     * [1] Pointer modifier.
     * 
     * If return type length > 1 then the return type is a pointer instead of a primitive.
     */
    var type : String;
}

typedef CommandParam = {

    /**
     * The name of the parameter.
     */
    var name : String;

    /**
     * Parameter type.
     * Return type is an array as there are potentially two parts to a parameter type.
     * 
     * [0] OpenGL parameter type.
     * [1] Pointer modifier.
     * 
     * If return type length > 1 then the parameters type is a pointer instead of a primitive.
     */
    var type : String;
}

typedef Command = {
    var proto : CommandProto;
    var param : Array<CommandParam>;
}

class Main
{
    static var builder : StringBuilder;

    public static function main()
    {
        builder = new StringBuilder();

        build(sys.io.File.getContent('gl.xml'));

        sys.io.File.saveContent('GL.hx', builder.toString());
    }

    static function build(_xml : String)
    {
        var xml = Xml.parse(_xml);
        var reg = xml.firstElement();

        writeHeader();

        writeEnums(reg);
        writeCommands(reg);

        writeFooter();
    }

    /**
     * Writes the header for the class.
     * Includes the package, GLsync extern, linc build meta data, and GL extern.
     */
    static function writeHeader()
    {
        builder.add('package opengl;');
        builder.newLine();
        builder.newLine();
        builder.add('@:keep').newLine();
        builder.add('@:unreflective').newLine();
        builder.add('@:include("linc_opengl.h")').newLine();
        builder.add('@:native("GLsync")').newLine();
        builder.add('extern class GLSync {}').newLine();

        builder.newLine();
        builder.add('@:keep').newLine();
        builder.add('@:include("linc_opengl.h")').newLine();
        builder.add('#if !display').newLine();
        builder.add('@:build(linc.Linc.touch())').newLine();
        builder.add('@:build(linc.Linc.xml("opengl"))').newLine();
        builder.add('#end').newLine();
        builder.add('extern class GL').newLine();
        builder.add('{').newLine();
        builder.newLine();
    }

    /**
     * Parses the openGL registry XML for 'enums' elements.
     * Each 'enums' elements contains one or more 'enum' element which contains a name, value, and maybe a comment.
     * 
     * This function converts writes all enums as 'inline static var' or 'inline static final' to the beginning of the GL.hx file.
     * Comments are copied over and enums are grouped by their block with a comment header giving the group name, vendor, and any comment.
     * 
     * @param _reg XML structure to parse.
     */
    static function writeEnums(_reg : Xml)
    {
        for (element in _reg.elementsNamed('enums'))
        {
            // Add a block header with details about the follow enum values.
            var group   = element.get('group');
            var comment = element.get('comment');
            var vendor  = element.get('vendor');
            var type    = element.get('type');

            builder.newLine();
            builder.add('\t').add('/**').newLine();
            if (group   != null) builder.add('\t').add(' * $group'         ).newLine();
            if (comment != null) builder.add('\t').add(' * $comment'       ).newLine();
            if (vendor  != null) builder.add('\t').add(' * @vendor $vendor').newLine();
            if (type    != null) builder.add('\t').add(' * @type   $type'  ).newLine();
            builder.add('\t').add(' */').newLine();
            builder.newLine();

            // For each 'enums' block read all the sub enums
            for (glEnum in element.elementsNamed('enum'))
            {
                var name    = glEnum.get('name');
                var value   = glEnum.get('value');
                var comment = glEnum.get('comment');

                // If this enum has a comment add it so auto completion will show it.
                if (comment != null)
                {
                    builder.add('\t').add('/**'        ).newLine();
                    builder.add('\t').add(' * $comment').newLine();
                    builder.add('\t').add(' */'        ).newLine();
                }

                builder.add('\t').add('inline static var $name = $value;').newLine();
            }
        }
    }

    /**
     * Parses the openGL XML for 'commands' elements.
     * Each 'commands' element contains one or more 'command' element which is a openGL function.
     * 
     * These 'command' elements contain the command name, return type, and all parameters and their types.
     * The GL types are converted into the equivilent Haxe types and written as an extern function.
     * 
     * @param _reg XML registry to parse.
     */
    static function writeCommands(_reg : Xml)
    {
        builder.newLine();

        for (element in _reg.elementsNamed('commands'))
        {
            for (glCommand in element.elementsNamed('command'))
            {
                var definition = parseCommand(glCommand);

                // Write the haxe equivilent function
                builder.newLine();
                builder.add('\t').add('@:native("${definition.proto.name}")').newLine();
                builder.add('\t').add('static function ${definition.proto.name}(');

                for (i in 0...definition.param.length)
                {
                    builder.add('_').add(definition.param[i].name).add(' : ').add(definition.param[i].type);

                    if (i != definition.param.length - 1) builder.add(', ');
                }

                builder.add(') : ${ definition.proto.type };').newLine();
            }
        }
    }

    /**
     * Writes the footer for the GL class.
     * Simply writes a closing curly bracket.
     */
    static function writeFooter()
    {
        builder.newLine();
        builder.add('}').newLine();
    }

    /**
     * Takes a XML structure defining an openGL function and reads all data from it.
     * The returned anonymouse structure contains a command proto (name and return value) and an array of parameters (name and type).
     * 
     * @param _xml Xml to parse.
     * @return Command
     */
    static function parseCommand(_xml : Xml) : Command
    {
        var proto : CommandProto = null;
        var param = new Array<CommandParam>();

        for (element in _xml.elements())
        {
            switch (element.nodeName)
            {
                case 'proto': proto = parseCommandProto(element);
                case 'param': param.push(parseCommandParam(element));
            }
        }

        return { proto : proto, param : param };
    }

    /**
     * Parses the proto element of a command.
     * Reads the function name and its return type.
     * 
     * @param _xml Xml to parse.
     * @return CommandProto
     */
    static function parseCommandProto(_xml : Xml) : CommandProto
    {
        var name = '';
        var type = '';

        for (child in _xml)
        {
            switch (child.nodeType) {
                case Element, Document:
                    switch (child.nodeName)
                    {
                        case 'name' : name = child.firstChild().nodeValue;
                        case 'ptype': type = child.firstChild().nodeValue;
                    }
                case _:
                    type += child.nodeValue.trim();
            }
        }

        return { name : name, type : type };
    }

    /**
     * Parses a param element of a command.
     * Reads the param name and its type.
     * 
     * @param _xml Xml to parse.
     * @return CommandParam
     */
    static function parseCommandParam(_xml : Xml) : CommandParam
    {
        var name = '';
        var type = '';

        for (child in _xml)
        {
            switch (child.nodeType) {
                // Name or GL Type element.
                case Element, Document:
                    switch (child.nodeName)
                    {
                        case 'name' : name = child.firstChild().nodeValue;
                        case 'ptype': type += child.firstChild().nodeValue;
                    }

                // pointer attributes
                case _:
                    type += child.nodeValue;
            }
        }
        
        return { name : name, type : type };
    }
}
