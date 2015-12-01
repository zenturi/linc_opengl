package opengl;

import snow.api.buffers.ArrayBufferView;
import snow.api.buffers.Float32Array;
import snow.api.buffers.Int32Array;

import opengl.GL;

@:keep
@:include('linc_opengl.h')
@:build(linc.Linc.touch())
extern class WebGL {

//WebGL spec GL externs
    
    @:native('glActiveTexture')
    static function activeTexture(texture:Int):Void;
    
    @:native('glAttachShader')
    static function attachShader(program:Int, shader:Int):Void;
    
    @:native('glBindAttribLocation')
    static function bindAttribLocation(program:Int, index:Int, name:String):Void;
    
    @:native('glBindBuffer')
    private static function _bindBuffer(target:Int, buffer:Int):Void;
    inline static function bindBuffer(target:Int, buffer:Null<Int>):Void {
        _bindBuffer(target, cast buffer);
    }
    
    @:native('glBindFramebuffer')
    private static function _bindFramebuffer(target:Int, framebuffer:Int):Void;
    inline static function bindFramebuffer(target:Int, framebuffer:Null<Int>):Void {
        _bindFramebuffer(target, cast framebuffer);
    }
    
    @:native('glBindRenderbuffer')
    private static function _bindRenderbuffer(target:Int, renderbuffer:Int):Void;
    inline static function bindRenderbuffer(target:Int, renderbuffer:Null<Int>):Void {
        _bindRenderbuffer(target, cast renderbuffer);
    }
    
    @:native('glBindTexture')
    static function bindTexture(target:Int, texture:Null<Int>):Void;
    
    @:native('glBlendColor')
    static function blendColor(red:Float, green:Float, blue:Float, alpha:Float):Void;
    
    @:native('glBlendEquation')
    static function blendEquation(mode:Int):Void;
    
    @:native('glBlendEquationSeparate')
    static function blendEquationSeparate(modeRGB:Int, modeAlpha:Int):Void;
    
    @:native('glBlendFunc')
    static function blendFunc(sfactor:Int, dfactor:Int):Void;
    
    @:native('glBlendFuncSeparate')
    static function blendFuncSeparate(srcRGB:Int, dstRGB:Int, srcAlpha:Int, dstAlpha:Int):Void;
    
    @:native('glCheckFramebufferStatus')
    static function checkFramebufferStatus(target:Int):Int;
    
    @:native('glClear')
    static function clear(mask:Int):Void;
    
    @:native('glClearColor')
    static function clearColor(red:Float, green:Float, blue:Float, alpha:Float):Void;
    
    @:native('glClearDepth')
    static function clearDepth(depth:Float):Void;
    
    @:native('glClearStencil')
    static function clearStencil(s:Int):Void;
    
    @:native('glColorMask')
    static function colorMask(red:Bool, green:Bool, blue:Bool, alpha:Bool):Void;
    
    @:native('glCompileShader')
    static function compileShader(shader:Int):Void;
    
    @:native('glCopyTexImage2D')
    static function copyTexImage2D(target:Int, level:Int, internalformat:Int, x:Int, y:Int, width:Int, height:Int, border:Int):Void;
    
    @:native('glCopyTexSubImage2D')
    static function copyTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, x:Int, y:Int, width:Int, height:Int):Void;
    
    @:native('linc::opengl::webgl::create_buffer')
    static function createBuffer():Int;
    
    @:native('linc::opengl::webgl::create_frame_buffer')
    static function createFramebuffer():Null<Int>;
    
    @:native('glCreateProgram')
    static function createProgram():Int;
    
    @:native('linc::opengl::webgl::create_render_buffer')
    static function createRenderbuffer():Null<Int>;
    
    @:native('glCreateShader')
    private static function _createShader(type:Int):Int;
    inline static function createShader(type:Int):Null<Int> {
        var _id:Int = _createShader(type);
        return _id == 0 ? null : _id;
    }
    
    @:native('linc::opengl::webgl::create_texture')
    static function createTexture():Int;
    
    @:native('glCullFace')
    static function cullFace(mode:Int):Void;
    
    inline static function deleteBuffer(buffer:Int):Void {
        untyped __cpp__('glDeleteBuffers(1, (const GLuint *)(&({0})))', buffer);
    }
    
    @:native('linc::opengl::webgl::delete_frame_buffer')
    static function deleteFramebuffer(framebuffer:Int):Void;
    
    @:native('glDeleteProgram')
    static function deleteProgram(program:Int):Void;
    
    @:native('linc::opengl::webgl::delete_render_buffer')
    static function deleteRenderbuffer(renderbuffer:Int):Void;
    
    @:native('glDeleteShader')
    static function deleteShader(shader:Int):Void;
    
    @:native('linc::opengl::webgl::delete_texture')
    static function deleteTexture(texture:Int):Void;
    
    @:native('glDepthFunc')
    static function depthFunc(func:Int):Void;
    
    @:native('glDepthMask')
    static function depthMask(flag:Bool):Void;
    
    @:native('glDepthRange')
    static function depthRange(zNear:Float, zFar:Float):Void;
    
    @:native('glDetachShader')
    static function detachShader(program:Int, shader:Int):Void;
    
    @:native('glDisable')
    static function disable(cap:Int):Void;
    
    @:native('glDisableVertexAttribArray')
    static function disableVertexAttribArray(index:Int):Void;
    
    @:native('glDrawArrays')
    static function drawArrays(mode:Int, first:Int, count:Int):Void;
    
    @:native('glDrawElements')
    static function drawElements(mode:Int, count:Int, type:Int, offset:Int):Void;
    
    @:native('glEnable')
    static function enable(cap:Int):Void;
    
    @:native('glEnableVertexAttribArray')
    static function enableVertexAttribArray(index:Int):Void;
    
    @:native('glFinish')
    static function finish():Void;
    
    @:native('glFlush')
    static function flush():Void;
    
    @:native('glFramebufferRenderbuffer')
    static function framebufferRenderbuffer(target:Int, attachment:Int, renderbuffertarget:Int, renderbuffer:Int):Void;
    
    @:native('glFramebufferTexture2D')
    static function framebufferTexture2D(target:Int, attachment:Int, textarget:Int, texture:Int, level:Int):Void;
    
    @:native('glFrontFace')
    static function frontFace(mode:Int):Void;
    
    @:native('glGenerateMipmap')
    static function generateMipmap(target:Int):Void;
    
    @:native('glGetActiveAttrib')
    static function getActiveAttrib(program:Int, index:Int):GLActiveInfo;
    
    @:native('glGetActiveUniform')
    static function getActiveUniform(program:Int, index:Int):GLActiveInfo;
    
    @:native('glGetAttachedShaders')
    static function getAttachedShaders(program:Int):Array<GLShader>;
    
    @:native('glGetAttribLocation')
    static function getAttribLocation(program:Int, name:String):Int;
    
    @:native('glGetBufferParameter')
    static function getBufferParameter(target:Int, pname:Int):Dynamic;
    
    @:native('glGetContextAttributes')
    static function getContextAttributes() : GLContextAttributes;
    
    @:native('glGetError')
    static function getError():Int;
    
    @:native('glGetExtension')
    static function getExtension(name:String):Dynamic;
    
    @:native('glGetFramebufferAttachmentParameter')
    static function getFramebufferAttachmentParameter(target:Int, attachment:Int, pname:Int):Dynamic;
    
    @:native('linc::opengl::webgl::get_parameter')
    static function getParameter(pname:Int):Int;
    
    @:native('linc::opengl::webgl::get_parameter_str')
    static function getParameterstr(pname:Int):String;
    
    @:native('linc::opengl::webgl::get_program_info_log')
    static function getProgramInfoLog(program:Int):String;
    
    @:native('linc::opengl::webgl::get_program_parameter')
    static function getProgramParameter(program:Int, pname:Int):Int;
    
    @:native('glGetRenderbufferParameter')
    static function getRenderbufferParameter(target:Int, pname:Int):Dynamic;
    
    @:native('linc::opengl::webgl::get_shader_info_log')
    static function getShaderInfoLog(shader:Int):String;
    
    @:native('linc::opengl::webgl::get_shader_parameter')
    static function getShaderParameter(shader:Int, pname:Int):Int;
    
    @:native('glGetShaderPrecisionFormat')
    static function getShaderPrecisionFormat(shadertype:Int, precisiontype:Int) : GLShaderPrecisionFormat;
    
    @:native('linc::opengl::webgl::get_shader_source')
    static function getShaderSource(shader:Int):String;
    
    @:native('linc::opengl::webgl::get_supported_extensions')
    static function getSupportedExtensions():Array<String>;
    
    @:native('glGetTexParameter')
    static function getTexParameter(target:Int, pname:Int):Dynamic;
    
    @:native('glGetUniform')
    static function getUniform(program:Int, location:GLUniformLocation):Dynamic;
    
    @:native('glGetUniformLocation')
    static function getUniformLocation(program:Int, name:String):Dynamic;
    
    @:native('glGetVertexAttrib')
    static function getVertexAttrib(index:Int, pname:Int):Dynamic;
    
    @:native('glGetVertexAttribOffset')
    static function getVertexAttribOffset(index:Int, pname:Int):Int;
    
    @:native('glHint')
    static function hint(target:Int, mode:Int):Void;
    
    @:native('glIsBuffer')
    static function isBuffer(buffer:Int):Bool;
    
    @:native('linc::opengl::webgl::is_frame_buffer')
    static function isFramebuffer(framebuffer:Int):Bool;
    
    @:native('glIsProgram')
    static function isProgram(program:Int):Bool;
    
    @:native('linc::opengl::webgl::is_render_buffer')
    static function isRenderbuffer(renderbuffer:Int):Bool;
    
    @:native('glIsShader')
    static function isShader(shader:Int):Bool;
    
    @:native('glIsTexture')
    static function isTexture(texture:Int):Bool;
    
    @:native('glLineWidth')
    static function lineWidth(width:Float):Void;
    
    @:native('glLinkProgram')
    static function linkProgram(program:Int):Void;
    
    @:native('glPixelStorei')
    static function pixelStorei(pname:Int, param:Int):Void;
    
    @:native('glPolygonOffset')
    static function polygonOffset(factor:Float, units:Float):Void;
    
    @:native('glRenderbufferStorage')
    static function renderbufferStorage(target:Int, internalformat:Int, width:Int, height:Int):Void;
    
    @:native('glSampleCoverage')
    static function sampleCoverage(value:Float, invert:Bool):Void;
    
    @:native('glScissor')
    static function scissor(x:Int, y:Int, width:Int, height:Int):Void;
    
    @:native('linc::opengl::webgl::shader_source')
    static function shaderSource(shader:Int, source:String):Void;
    
    @:native('glStencilFunc')
    static function stencilFunc(func:Int, ref:Int, mask:Int):Void;
    
    @:native('glStencilFuncSeparate')
    static function stencilFuncSeparate(face:Int, func:Int, ref:Int, mask:Int):Void;
    
    @:native('glStencilMask')
    static function stencilMask(mask:Int):Void;
    
    @:native('glStencilMaskSeparate')
    static function stencilMaskSeparate(face:Int, mask:Int):Void;
    
    @:native('glStencilOp')
    static function stencilOp(fail:Int, zfail:Int, zpass:Int):Void;
    
    @:native('glStencilOpSeparate')
    static function stencilOpSeparate(face:Int, fail:Int, zfail:Int, zpass:Int):Void;
    
    @:native('glTexParameterf')
    static function texParameterf(target:Int, pname:Int, param:Float):Void;
    
    @:native('glTexParameteri')
    static function texParameteri(target:Int, pname:Int, param:Int):Void;
    
    @:native('glUniform1f')
    static function uniform1f(location:GLUniformLocation, x:Float):Void;
    
    @:native('glUniform1i')
    static function uniform1i(location:GLUniformLocation, x:Int):Void;
    
    @:native('glUniform2f')
    static function uniform2f(location:GLUniformLocation, x:Float, y:Float):Void;
    
    @:native('glUniform2i')
    static function uniform2i(location:GLUniformLocation, x:Int, y:Int):Void;
    
    @:native('glUniform3f')
    static function uniform3f(location:GLUniformLocation, x:Float, y:Float, z:Float):Void;
    
    @:native('glUniform3i')
    static function uniform3i(location:GLUniformLocation, x:Int, y:Int, z:Int):Void;
    
    @:native('glUniform4f')
    static function uniform4f(location:GLUniformLocation, x:Float, y:Float, z:Float, w:Float):Void;
    
    @:native('glUniform4i')
    static function uniform4i(location:GLUniformLocation, x:Int, y:Int, z:Int, w:Int):Void;
    
    @:native('glUseProgram')
    static function useProgram(program:Int):Void;
    
    @:native('glValidateProgram')
    static function validateProgram(program:Int):Void;
    
    @:native('glVertexAttrib1f')
    static function vertexAttrib1f(indx:Int, x:Float):Void;
    
    @:native('glVertexAttrib2f')
    static function vertexAttrib2f(indx:Int, x:Float, y:Float):Void;
    
    @:native('glVertexAttrib3f')
    static function vertexAttrib3f(indx:Int, x:Float, y:Float, z:Float):Void;
    
    @:native('glVertexAttrib4f')
    static function vertexAttrib4f(indx:Int, x:Float, y:Float, z:Float, w:Float):Void;
    
    @:native('glViewport')
    static function viewport(x:Int, y:Int, width:Int, height:Int):Void;


    
    static inline function bufferData(target:Int, data:ArrayBufferView, usage:Int):Void
        untyped __cpp__('glBufferData({0}, {1}->byteLength, (GLvoid*)(&{1}->buffer->b[0] + {1}->byteOffset), {2})', target, data, usage);
    
    static inline function bufferSubData(target:Int, offset:Int, data:ArrayBufferView ):Void
        untyped __cpp__('glBufferSubData({0}, {1}, {2}->byteLength, (GLvoid*)(&{2}->buffer->b[0] + {2}->byteOffset))', target, offset, data);
    
    static inline function compressedTexImage2D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, border:Int, data:ArrayBufferView):Void
        untyped __cpp__('glCompressedTexImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}->byteLength, (GLvoid*)(&{6}->buffer->b[0] + {6}->byteOffset))',target,level,internalformat, width, height, border, data);
    
    static inline function compressedTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, data:ArrayBufferView):Void
        untyped __cpp__('glCompressedTexSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}->byteLength, (GLvoid*)(&{7}->buffer->b[0] + {7}->byteOffset))',target,level,xoffset,yoffset,width,height,format,data);
    
    static inline function readPixels(x:Int, y:Int, width:Int, height:Int, format:Int, type:Int, data:ArrayBufferView):Void
        untyped __cpp__('glReadPixels({0}, {1}, {2}, {3}, {4}, {5}, (GLvoid*)(&{6}->buffer->b[0] + {6}->byteOffset))',x,y,width,height,format,type,data);
    
    static inline function texImage2D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, border:Int, format:Int, type:Int, data:ArrayBufferView):Void {
        untyped __cpp__('GLvoid* _data = (({0} != null()) ? (GLvoid*)(&{0}->buffer->b[0] + {0}->byteOffset) : NULL)',data);
        untyped __cpp__('glTexImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, _data)',target,level,internalformat,width,height,border,format,type);
    }
    
    static inline function texSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, type:Int, data:ArrayBufferView):Void
        untyped __cpp__('glTexSubImage2D({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, (GLvoid*)(&{8}->buffer->b[0] + {8}->byteOffset))',target,level,xoffset,yoffset,width,height,format,type,data);
    
    static inline function uniform1fv(location:GLUniformLocation, data:Float32Array):Void
        untyped __cpp__('glUniform1fv({0}, {1}->byteLength, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data);
    
    static inline function uniform1iv(location:GLUniformLocation, data:Int32Array):Void
        untyped __cpp__('glUniform1iv({0}, {1}->byteLength, (GLint*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data);
    
    static inline function uniform2fv(location:GLUniformLocation, data:Float32Array):Void
        untyped __cpp__('glUniform2fv({0}, {1}->byteLength>>1, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data);
    
    static inline function uniform2iv(location:GLUniformLocation, data:Int32Array):Void
        untyped __cpp__('glUniform2iv({0}, {1}->byteLength>>1, (GLint*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data);
    
    static inline function uniform3fv(location:GLUniformLocation, data:Float32Array):Void
        untyped __cpp__('glUniform3fv({0}, {1}->byteLength/3, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data);
    
    static inline function uniform3iv(location:GLUniformLocation, data:Int32Array):Void
        untyped __cpp__('glUniform3iv({0}, {1}->byteLength/3, (GLint*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data);
    
    static inline function uniform4fv(location:GLUniformLocation, data:Float32Array):Void
        untyped __cpp__('glUniform4fv({0}, {1}->byteLength>>2, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data);
    
    static inline function uniform4iv(location:GLUniformLocation, data:Int32Array):Void
        untyped __cpp__('glUniform4iv({0}, {1}->byteLength>>2, (GLint*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data);
    
    static inline function uniformMatrix2fv(location:GLUniformLocation, transpose:Bool, data:Float32Array):Void
        untyped __cpp__('glUniformMatrix2fv({0}, {1}->length>>2, {2}, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data, transpose);
    
    static inline function uniformMatrix3fv(location:GLUniformLocation, transpose:Bool, data:Float32Array):Void
        untyped __cpp__('glUniformMatrix3fv({0}, {1}->length/9, {2}, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data, transpose);
    
    static inline function uniformMatrix4fv(location:GLUniformLocation, transpose:Bool, data:Float32Array):Void
        untyped __cpp__('glUniformMatrix4fv({0}, {1}->length>>4, {2}, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', location, data, transpose);
    
    static inline function vertexAttrib1fv(indx:Int, data:Float32Array):Void
        untyped __cpp__('glVertexAttrib1fv({0}, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', indx, data);
    
    static inline function vertexAttrib2fv(indx:Int, data:Float32Array):Void
        untyped __cpp__('glVertexAttrib2fv({0}, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', indx, data);
    
    static inline function vertexAttrib3fv(indx:Int, data:Float32Array):Void
        untyped __cpp__('glVertexAttrib3fv({0}, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', indx, data);
    
    static inline function vertexAttrib4fv(indx:Int, data:Float32Array):Void
        untyped __cpp__('glVertexAttrib4fv({0}, (GLfloat*)(&{1}->buffer->b[0] + {1}->byteOffset))', indx, data);
        
        //:todo:?
    static inline function vertexAttribPointer(indx:Int, size:Int, type:Int, normalized:Bool, stride:Int, offset:Int):Void
        untyped __cpp__('glVertexAttribPointer({0}, {1}, {2}, {3}, {4}, (void *)(intptr_t){5})', indx, size, type, normalized, stride, offset);


//Unofficial helpers

    @:native('linc::opengl::webgl::get_version_string')
    static function versionString():String;



//Defines




    /* ClearBufferMask */
    static inline var DEPTH_BUFFER_BIT                   = 0x00000100;
    static inline var STENCIL_BUFFER_BIT                 = 0x00000400;
    static inline var COLOR_BUFFER_BIT                   = 0x00004000;

    /* BeginMode */
    static inline var POINTS                             = 0x0000;
    static inline var LINES                              = 0x0001;
    static inline var LINE_LOOP                          = 0x0002;
    static inline var LINE_STRIP                         = 0x0003;
    static inline var TRIANGLES                          = 0x0004;
    static inline var TRIANGLE_STRIP                     = 0x0005;
    static inline var TRIANGLE_FAN                       = 0x0006;

    /* AlphaFunction(not supported in ES20) */
    /*      NEVER */
    /*      LESS */
    /*      EQUAL */
    /*      LEQUAL */
    /*      GREATER */
    /*      NOTEQUAL */
    /*      GEQUAL */
    /*      ALWAYS */
    /* BlendingFactorDest */
    static inline var ZERO                               = 0;
    static inline var ONE                                = 1;
    static inline var SRC_COLOR                          = 0x0300;
    static inline var ONE_MINUS_SRC_COLOR                = 0x0301;
    static inline var SRC_ALPHA                          = 0x0302;
    static inline var ONE_MINUS_SRC_ALPHA                = 0x0303;
    static inline var DST_ALPHA                          = 0x0304;
    static inline var ONE_MINUS_DST_ALPHA                = 0x0305;

    /* BlendingFactorSrc */
    /*      ZERO */
    /*      ONE */
    static inline var DST_COLOR                          = 0x0306;
    static inline var ONE_MINUS_DST_COLOR                = 0x0307;
    static inline var SRC_ALPHA_SATURATE                 = 0x0308;
    /*      SRC_ALPHA */
    /*      ONE_MINUS_SRC_ALPHA */
    /*      DST_ALPHA */
    /*      ONE_MINUS_DST_ALPHA */
    /* BlendEquationSeparate */
    static inline var FUNC_ADD                           = 0x8006;
    static inline var BLEND_EQUATION                     = 0x8009;
    static inline var BLEND_EQUATION_RGB                 = 0x8009;  /* same as BLEND_EQUATION */
    static inline var BLEND_EQUATION_ALPHA               = 0x883D;

    /* BlendSubtract */
    static inline var FUNC_SUBTRACT                      = 0x800A;
    static inline var FUNC_REVERSE_SUBTRACT              = 0x800B;

    /* Separate Blend Functions */
    static inline var BLEND_DST_RGB                      = 0x80C8;
    static inline var BLEND_SRC_RGB                      = 0x80C9;
    static inline var BLEND_DST_ALPHA                    = 0x80CA;
    static inline var BLEND_SRC_ALPHA                    = 0x80CB;
    static inline var CONSTANT_COLOR                     = 0x8001;
    static inline var ONE_MINUS_CONSTANT_COLOR           = 0x8002;
    static inline var CONSTANT_ALPHA                     = 0x8003;
    static inline var ONE_MINUS_CONSTANT_ALPHA           = 0x8004;
    static inline var BLEND_COLOR                        = 0x8005;

    /* GLBuffer Objects */
    static inline var ARRAY_BUFFER                       = 0x8892;
    static inline var ELEMENT_ARRAY_BUFFER               = 0x8893;
    static inline var ARRAY_BUFFER_BINDING               = 0x8894;
    static inline var ELEMENT_ARRAY_BUFFER_BINDING       = 0x8895;

    static inline var STREAM_DRAW                        = 0x88E0;
    static inline var STATIC_DRAW                        = 0x88E4;
    static inline var DYNAMIC_DRAW                       = 0x88E8;

    static inline var BUFFER_SIZE                        = 0x8764;
    static inline var BUFFER_USAGE                       = 0x8765;

    static inline var CURRENT_VERTEX_ATTRIB              = 0x8626;

    /* CullFaceMode */
    static inline var FRONT                              = 0x0404;
    static inline var BACK                               = 0x0405;
    static inline var FRONT_AND_BACK                     = 0x0408;

    /* DepthFunction */
    /*      NEVER */
    /*      LESS */
    /*      EQUAL */
    /*      LEQUAL */
    /*      GREATER */
    /*      NOTEQUAL */
    /*      GEQUAL */
    /*      ALWAYS */
    /* EnableCap */
    /* TEXTURE_2D */
    static inline var CULL_FACE                          = 0x0B44;
    static inline var BLEND                              = 0x0BE2;
    static inline var DITHER                             = 0x0BD0;
    static inline var STENCIL_TEST                       = 0x0B90;
    static inline var DEPTH_TEST                         = 0x0B71;
    static inline var SCISSOR_TEST                       = 0x0C11;
    static inline var POLYGON_OFFSET_FILL                = 0x8037;
    static inline var SAMPLE_ALPHA_TO_COVERAGE           = 0x809E;
    static inline var SAMPLE_COVERAGE                    = 0x80A0;

    /* ErrorCode */
    static inline var NO_ERROR                           = 0;
    static inline var INVALID_ENUM                       = 0x0500;
    static inline var INVALID_VALUE                      = 0x0501;
    static inline var INVALID_OPERATION                  = 0x0502;
    static inline var OUT_OF_MEMORY                      = 0x0505;

    /* FrontFaceDirection */
    static inline var CW                                 = 0x0900;
    static inline var CCW                                = 0x0901;

    /* GetPName */
    static inline var LINE_WIDTH                         = 0x0B21;
    static inline var ALIASED_POINT_SIZE_RANGE           = 0x846D;
    static inline var ALIASED_LINE_WIDTH_RANGE           = 0x846E;
    static inline var CULL_FACE_MODE                     = 0x0B45;
    static inline var FRONT_FACE                         = 0x0B46;
    static inline var DEPTH_RANGE                        = 0x0B70;
    static inline var DEPTH_WRITEMASK                    = 0x0B72;
    static inline var DEPTH_CLEAR_VALUE                  = 0x0B73;
    static inline var DEPTH_FUNC                         = 0x0B74;
    static inline var STENCIL_CLEAR_VALUE                = 0x0B91;
    static inline var STENCIL_FUNC                       = 0x0B92;
    static inline var STENCIL_FAIL                       = 0x0B94;
    static inline var STENCIL_PASS_DEPTH_FAIL            = 0x0B95;
    static inline var STENCIL_PASS_DEPTH_PASS            = 0x0B96;
    static inline var STENCIL_REF                        = 0x0B97;
    static inline var STENCIL_VALUE_MASK                 = 0x0B93;
    static inline var STENCIL_WRITEMASK                  = 0x0B98;
    static inline var STENCIL_BACK_FUNC                  = 0x8800;
    static inline var STENCIL_BACK_FAIL                  = 0x8801;
    static inline var STENCIL_BACK_PASS_DEPTH_FAIL       = 0x8802;
    static inline var STENCIL_BACK_PASS_DEPTH_PASS       = 0x8803;
    static inline var STENCIL_BACK_REF                   = 0x8CA3;
    static inline var STENCIL_BACK_VALUE_MASK            = 0x8CA4;
    static inline var STENCIL_BACK_WRITEMASK             = 0x8CA5;
    static inline var VIEWPORT                           = 0x0BA2;
    static inline var SCISSOR_BOX                        = 0x0C10;
    /*      SCISSOR_TEST */
    static inline var COLOR_CLEAR_VALUE                  = 0x0C22;
    static inline var COLOR_WRITEMASK                    = 0x0C23;
    static inline var UNPACK_ALIGNMENT                   = 0x0CF5;
    static inline var PACK_ALIGNMENT                     = 0x0D05;
    static inline var MAX_TEXTURE_SIZE                   = 0x0D33;
    static inline var MAX_VIEWPORT_DIMS                  = 0x0D3A;
    static inline var SUBPIXEL_BITS                      = 0x0D50;
    static inline var RED_BITS                           = 0x0D52;
    static inline var GREEN_BITS                         = 0x0D53;
    static inline var BLUE_BITS                          = 0x0D54;
    static inline var ALPHA_BITS                         = 0x0D55;
    static inline var DEPTH_BITS                         = 0x0D56;
    static inline var STENCIL_BITS                       = 0x0D57;
    static inline var POLYGON_OFFSET_UNITS               = 0x2A00;
    /*      POLYGON_OFFSET_FILL */
    static inline var POLYGON_OFFSET_FACTOR              = 0x8038;
    static inline var TEXTURE_BINDING_2D                 = 0x8069;
    static inline var SAMPLE_BUFFERS                     = 0x80A8;
    static inline var SAMPLES                            = 0x80A9;
    static inline var SAMPLE_COVERAGE_VALUE              = 0x80AA;
    static inline var SAMPLE_COVERAGE_INVERT             = 0x80AB;

    /* GetTextureParameter */
    /*      TEXTURE_MAG_FILTER */
    /*      TEXTURE_MIN_FILTER */
    /*      TEXTURE_WRAP_S */
    /*      TEXTURE_WRAP_T */
    static inline var COMPRESSED_TEXTURE_FORMATS         = 0x86A3;

    /* HintMode */
    static inline var DONT_CARE                          = 0x1100;
    static inline var FASTEST                            = 0x1101;
    static inline var NICEST                             = 0x1102;

    /* HintTarget */
    static inline var GENERATE_MIPMAP_HINT               = 0x8192;

    /* DataType */
    static inline var BYTE                               = 0x1400;
    static inline var UNSIGNED_BYTE                      = 0x1401;
    static inline var SHORT                              = 0x1402;
    static inline var UNSIGNED_SHORT                     = 0x1403;
    static inline var INT                                = 0x1404;
    static inline var UNSIGNED_INT                       = 0x1405;
    static inline var FLOAT                              = 0x1406;

    /* PixelFormat */
    static inline var DEPTH_COMPONENT                    = 0x1902;
    static inline var ALPHA                              = 0x1906;
    static inline var RGB                                = 0x1907;
    static inline var RGBA                               = 0x1908;
    static inline var LUMINANCE                          = 0x1909;
    static inline var LUMINANCE_ALPHA                    = 0x190A;

    /* PixelType */
    /*      UNSIGNED_BYTE */
    static inline var UNSIGNED_SHORT_4_4_4_4             = 0x8033;
    static inline var UNSIGNED_SHORT_5_5_5_1             = 0x8034;
    static inline var UNSIGNED_SHORT_5_6_5               = 0x8363;

    /* Shaders */
    static inline var FRAGMENT_SHADER                    = 0x8B30;
    static inline var VERTEX_SHADER                      = 0x8B31;
    static inline var MAX_VERTEX_ATTRIBS                 = 0x8869;
    static inline var MAX_VERTEX_UNIFORM_VECTORS         = 0x8DFB;
    static inline var MAX_VARYING_VECTORS                = 0x8DFC;
    static inline var MAX_COMBINED_TEXTURE_IMAGE_UNITS   = 0x8B4D;
    static inline var MAX_VERTEX_TEXTURE_IMAGE_UNITS     = 0x8B4C;
    static inline var MAX_TEXTURE_IMAGE_UNITS            = 0x8872;
    static inline var MAX_FRAGMENT_UNIFORM_VECTORS       = 0x8DFD;
    static inline var SHADER_TYPE                        = 0x8B4F;
    static inline var DELETE_STATUS                      = 0x8B80;
    static inline var LINK_STATUS                        = 0x8B82;
    static inline var VALIDATE_STATUS                    = 0x8B83;
    static inline var ATTACHED_SHADERS                   = 0x8B85;
    static inline var ACTIVE_UNIFORMS                    = 0x8B86;
    static inline var ACTIVE_ATTRIBUTES                  = 0x8B89;
    static inline var SHADING_LANGUAGE_VERSION           = 0x8B8C;
    static inline var CURRENT_PROGRAM                    = 0x8B8D;

    /* StencilFunction */
    static inline var NEVER                              = 0x0200;
    static inline var LESS                               = 0x0201;
    static inline var EQUAL                              = 0x0202;
    static inline var LEQUAL                             = 0x0203;
    static inline var GREATER                            = 0x0204;
    static inline var NOTEQUAL                           = 0x0205;
    static inline var GEQUAL                             = 0x0206;
    static inline var ALWAYS                             = 0x0207;

    /* StencilOp */
    /*      ZERO */
    static inline var KEEP                               = 0x1E00;
    static inline var REPLACE                            = 0x1E01;
    static inline var INCR                               = 0x1E02;
    static inline var DECR                               = 0x1E03;
    static inline var INVERT                             = 0x150A;
    static inline var INCR_WRAP                          = 0x8507;
    static inline var DECR_WRAP                          = 0x8508;

    /* StringName */
    static inline var VENDOR                             = 0x1F00;
    static inline var RENDERER                           = 0x1F01;
    static inline var VERSION                            = 0x1F02;

    /* TextureMagFilter */
    static inline var NEAREST                            = 0x2600;
    static inline var LINEAR                             = 0x2601;

    /* TextureMinFilter */
    /*      NEAREST */
    /*      LINEAR */
    static inline var NEAREST_MIPMAP_NEAREST             = 0x2700;
    static inline var LINEAR_MIPMAP_NEAREST              = 0x2701;
    static inline var NEAREST_MIPMAP_LINEAR              = 0x2702;
    static inline var LINEAR_MIPMAP_LINEAR               = 0x2703;

    /* TextureParameterName */
    static inline var TEXTURE_MAG_FILTER                 = 0x2800;
    static inline var TEXTURE_MIN_FILTER                 = 0x2801;
    static inline var TEXTURE_WRAP_S                     = 0x2802;
    static inline var TEXTURE_WRAP_T                     = 0x2803;

    /* TextureTarget */
    static inline var TEXTURE_2D                         = 0x0DE1;
    static inline var TEXTURE                            = 0x1702;

    static inline var TEXTURE_CUBE_MAP                   = 0x8513;
    static inline var TEXTURE_BINDING_CUBE_MAP           = 0x8514;
    static inline var TEXTURE_CUBE_MAP_POSITIVE_X        = 0x8515;
    static inline var TEXTURE_CUBE_MAP_NEGATIVE_X        = 0x8516;
    static inline var TEXTURE_CUBE_MAP_POSITIVE_Y        = 0x8517;
    static inline var TEXTURE_CUBE_MAP_NEGATIVE_Y        = 0x8518;
    static inline var TEXTURE_CUBE_MAP_POSITIVE_Z        = 0x8519;
    static inline var TEXTURE_CUBE_MAP_NEGATIVE_Z        = 0x851A;
    static inline var MAX_CUBE_MAP_TEXTURE_SIZE          = 0x851C;

    /* TextureUnit */
    static inline var TEXTURE0                           = 0x84C0;
    static inline var TEXTURE1                           = 0x84C1;
    static inline var TEXTURE2                           = 0x84C2;
    static inline var TEXTURE3                           = 0x84C3;
    static inline var TEXTURE4                           = 0x84C4;
    static inline var TEXTURE5                           = 0x84C5;
    static inline var TEXTURE6                           = 0x84C6;
    static inline var TEXTURE7                           = 0x84C7;
    static inline var TEXTURE8                           = 0x84C8;
    static inline var TEXTURE9                           = 0x84C9;
    static inline var TEXTURE10                          = 0x84CA;
    static inline var TEXTURE11                          = 0x84CB;
    static inline var TEXTURE12                          = 0x84CC;
    static inline var TEXTURE13                          = 0x84CD;
    static inline var TEXTURE14                          = 0x84CE;
    static inline var TEXTURE15                          = 0x84CF;
    static inline var TEXTURE16                          = 0x84D0;
    static inline var TEXTURE17                          = 0x84D1;
    static inline var TEXTURE18                          = 0x84D2;
    static inline var TEXTURE19                          = 0x84D3;
    static inline var TEXTURE20                          = 0x84D4;
    static inline var TEXTURE21                          = 0x84D5;
    static inline var TEXTURE22                          = 0x84D6;
    static inline var TEXTURE23                          = 0x84D7;
    static inline var TEXTURE24                          = 0x84D8;
    static inline var TEXTURE25                          = 0x84D9;
    static inline var TEXTURE26                          = 0x84DA;
    static inline var TEXTURE27                          = 0x84DB;
    static inline var TEXTURE28                          = 0x84DC;
    static inline var TEXTURE29                          = 0x84DD;
    static inline var TEXTURE30                          = 0x84DE;
    static inline var TEXTURE31                          = 0x84DF;
    static inline var ACTIVE_TEXTURE                     = 0x84E0;

    /* TextureWrapMode */
    static inline var REPEAT                             = 0x2901;
    static inline var CLAMP_TO_EDGE                      = 0x812F;
    static inline var MIRRORED_REPEAT                    = 0x8370;

    /* Uniform Types */
    static inline var FLOAT_VEC2                         = 0x8B50;
    static inline var FLOAT_VEC3                         = 0x8B51;
    static inline var FLOAT_VEC4                         = 0x8B52;
    static inline var INT_VEC2                           = 0x8B53;
    static inline var INT_VEC3                           = 0x8B54;
    static inline var INT_VEC4                           = 0x8B55;
    static inline var BOOL                               = 0x8B56;
    static inline var BOOL_VEC2                          = 0x8B57;
    static inline var BOOL_VEC3                          = 0x8B58;
    static inline var BOOL_VEC4                          = 0x8B59;
    static inline var FLOAT_MAT2                         = 0x8B5A;
    static inline var FLOAT_MAT3                         = 0x8B5B;
    static inline var FLOAT_MAT4                         = 0x8B5C;
    static inline var SAMPLER_2D                         = 0x8B5E;
    static inline var SAMPLER_CUBE                       = 0x8B60;

    /* Vertex Arrays */
    static inline var VERTEX_ATTRIB_ARRAY_ENABLED        = 0x8622;
    static inline var VERTEX_ATTRIB_ARRAY_SIZE           = 0x8623;
    static inline var VERTEX_ATTRIB_ARRAY_STRIDE         = 0x8624;
    static inline var VERTEX_ATTRIB_ARRAY_TYPE           = 0x8625;
    static inline var VERTEX_ATTRIB_ARRAY_NORMALIZED     = 0x886A;
    static inline var VERTEX_ATTRIB_ARRAY_POINTER        = 0x8645;
    static inline var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

    /* Point Size */
    static inline var VERTEX_PROGRAM_POINT_SIZE          = 0x8642;
    static inline var POINT_SPRITE                       = 0x8861;

    /* GLShader Source */
    static inline var COMPILE_STATUS                     = 0x8B81;

    /* GLShader Precision-Specified Types */
    static inline var LOW_FLOAT                          = 0x8DF0;
    static inline var MEDIUM_FLOAT                       = 0x8DF1;
    static inline var HIGH_FLOAT                         = 0x8DF2;
    static inline var LOW_INT                            = 0x8DF3;
    static inline var MEDIUM_INT                         = 0x8DF4;
    static inline var HIGH_INT                           = 0x8DF5;

    /* GLFramebuffer Object. */
    static inline var FRAMEBUFFER                        = 0x8D40;
    static inline var RENDERBUFFER                       = 0x8D41;

    static inline var RGBA4                              = 0x8056;
    static inline var RGB5_A1                            = 0x8057;
    static inline var RGB565                             = 0x8D62;
    static inline var DEPTH_COMPONENT16                  = 0x81A5;
    static inline var STENCIL_INDEX                      = 0x1901;
    static inline var STENCIL_INDEX8                     = 0x8D48;
    static inline var DEPTH_STENCIL                      = 0x84F9;

    static inline var RENDERBUFFER_WIDTH                 = 0x8D42;
    static inline var RENDERBUFFER_HEIGHT                = 0x8D43;
    static inline var RENDERBUFFER_INTERNAL_FORMAT       = 0x8D44;
    static inline var RENDERBUFFER_RED_SIZE              = 0x8D50;
    static inline var RENDERBUFFER_GREEN_SIZE            = 0x8D51;
    static inline var RENDERBUFFER_BLUE_SIZE             = 0x8D52;
    static inline var RENDERBUFFER_ALPHA_SIZE            = 0x8D53;
    static inline var RENDERBUFFER_DEPTH_SIZE            = 0x8D54;
    static inline var RENDERBUFFER_STENCIL_SIZE          = 0x8D55;

    static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE             = 0x8CD0;
    static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME             = 0x8CD1;
    static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL           = 0x8CD2;
    static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE   = 0x8CD3;

    static inline var COLOR_ATTACHMENT0                  = 0x8CE0;
    static inline var DEPTH_ATTACHMENT                   = 0x8D00;
    static inline var STENCIL_ATTACHMENT                 = 0x8D20;
    static inline var DEPTH_STENCIL_ATTACHMENT           = 0x821A;

    static inline var NONE                               = 0;

    static inline var FRAMEBUFFER_COMPLETE                       = 0x8CD5;
    static inline var FRAMEBUFFER_INCOMPLETE_ATTACHMENT          = 0x8CD6;
    static inline var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT  = 0x8CD7;
    static inline var FRAMEBUFFER_INCOMPLETE_DIMENSIONS          = 0x8CD9;
    static inline var FRAMEBUFFER_UNSUPPORTED                    = 0x8CDD;

    static inline var FRAMEBUFFER_BINDING                = 0x8CA6;
    static inline var RENDERBUFFER_BINDING               = 0x8CA7;
    static inline var MAX_RENDERBUFFER_SIZE              = 0x84E8;

    static inline var INVALID_FRAMEBUFFER_OPERATION      = 0x0506;

    /* WebGL-specific enums */
    static inline var UNPACK_FLIP_Y_WEBGL                = 0x9240;
    static inline var UNPACK_PREMULTIPLY_ALPHA_WEBGL     = 0x9241;
    static inline var CONTEXT_LOST_WEBGL                 = 0x9242;
    static inline var UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;
    static inline var BROWSER_DEFAULT_WEBGL              = 0x9244;

} //WebGL


typedef GLActiveInfo = {

    size : Int,
    type : Int,
    name : String

} //GLActiveInfo


typedef GLShaderPrecisionFormat = {

    rangeMin : Int,
    rangeMax : Int,
    precision : Int,

} //GLShaderPrecisionFormat

typedef GLContextAttributes = {

    alpha:Bool,
    depth:Bool,
    stencil:Bool,
    antialias:Bool,
    premultipliedAlpha:Bool,
    preserveDrawingBuffer:Bool

} //GLContextAttributes


class GLObject {
        /** The native GL handle/id. read only */
    public var id (default, null) : Int;
        /** The invalidated state. read only */
    public var invalidated (default,set) : Bool;
    public function new( id:Int ) this.id = id;
    function toString() : String return 'GLObject($id)';
    function set_invalidated( value:Bool ) : Bool {
        id = -1; return invalidated = value;
    } //set_invalidated
}

abstract GLUniformLocation(Null<Int>) from Null<Int> to Null<Int> {}

@:noCompletion class GLBO extends GLObject { override function toString() return 'GLBuffer($id)'; }
@:noCompletion class GLFBO extends GLObject { override function toString() return 'GLFramebuffer($id)'; }
@:noCompletion class GLRBO extends GLObject { override function toString() return 'GLRenderbuffer($id)'; }
@:noCompletion class GLSO extends GLObject { override function toString() return 'GLShader($id)'; }
@:noCompletion class GLTO extends GLObject { override function toString() return 'GLTexture($id)'; }
@:noCompletion class GLPO extends GLObject {
    public var shaders : Array<GLShader>;
    public function new( id:Int ) { super( id ); shaders = []; } //new
    override function toString() return 'GLProgram($id)';
}

abstract GLBuffer(GLBO) {
    public var id (get,never):Int;
    public var invalidated (get,set):Bool;
    inline public function new(_id:Int) this = new GLBO(_id);
    inline function get_id() return this.id;
    inline function get_invalidated() return this.invalidated;
    inline function set_invalidated(_invalidated:Bool) return this.invalidated = _invalidated;
    @:to inline public function toInt() : Int return this.id;
    @:to inline public function toDynamic() : Dynamic return this.id;
    @:to inline public function toNullInt() : Null<Int> return this.id;
    @:from inline static public function fromInt(_id:Int) return new GLBuffer(_id);
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLBuffer(Std.int(_id));
}

abstract GLFramebuffer(GLFBO) {
    public var id (get,never) : Int;
    public var invalidated (get,set) : Bool;
    inline public function new(_id:Int) this = new GLFBO(_id);
    inline function get_id() return this.id;
    inline function get_invalidated() return this.invalidated;
    inline function set_invalidated(_invalidated:Bool) return this.invalidated = _invalidated;
    @:to inline public function toInt() : Int return this.id;
    @:to inline public function toDynamic() : Dynamic return this.id;
    @:to inline public function toNullInt() : Null<Int> return this.id;
    @:from inline static public function fromInt(_id:Int) return new GLFramebuffer(_id);
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLFramebuffer(Std.int(_id));
} //GLFramebuffer

abstract GLRenderbuffer(GLRBO) {
    public var id (get,never) : Int;
    public var invalidated (get,set) : Bool;
    inline public function new(_id:Int) this = new GLRBO(_id);
    inline function get_id() return this.id;
    inline function get_invalidated() return this.invalidated;
    inline function set_invalidated(_invalidated:Bool) return this.invalidated = _invalidated;
    @:to inline public function toInt() : Int return this.id;
    @:to inline public function toDynamic() : Dynamic return this.id;
    @:to inline public function toNullInt() : Null<Int> return this.id;
    @:from inline static public function fromInt(_id:Int) return new GLRenderbuffer(_id);
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLRenderbuffer(Std.int(_id));
} //GLRenderbuffer


abstract GLTexture(GLTO) {
    public var id (get,never):Int;
    public var invalidated (get,set):Bool;
    inline public function new(_id:Int) this = new GLTO(_id);
    inline function get_id() return this.id;
    inline function get_invalidated() return this.invalidated;
    inline function set_invalidated(_invalidated:Bool) return this.invalidated = _invalidated;
    @:to inline public function toInt() : Int return this.id;
    @:to inline public function toDynamic() : Dynamic return this.id;
    @:to inline public function toNullInt() : Null<Int> return this.id;
    @:from inline static public function fromInt(_id:Int) return new GLTexture(_id);
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLTexture(Std.int(_id));
}

abstract GLShader(GLSO) {
    public var id (get,never):Int;
    public var invalidated (get,set):Bool;
    inline public function new(_id:Int) this = new GLSO(_id);
    inline function get_id() return this.id;
    inline function get_invalidated() return this.invalidated;
    inline function set_invalidated(_invalidated:Bool) return this.invalidated = _invalidated;
    @:to inline public function toInt() : Int return this.id;
    @:to inline public function toDynamic() : Dynamic return this.id;
    @:to inline public function toNullInt() : Null<Int> return this.id;
    @:from inline static public function fromInt(_id:Int) return new GLShader(_id);
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLShader(Std.int(_id));
}

@:forward(shaders)
abstract GLProgram(GLPO) {
    public var id (get,never):Int;
    public var invalidated (get,set):Bool;
    inline public function new(_id:Int) this = new GLPO(_id);
    inline function get_id() return this.id;
    inline function get_invalidated() return this.invalidated;
    inline function set_invalidated(_invalidated:Bool) return this.invalidated = _invalidated;
    @:to inline public function toInt() : Int return this.id;
    @:to inline public function toDynamic() : Dynamic return this.id;
    @:to inline public function toNullInt() : Null<Int> return this.id;
    @:from inline static public function fromInt(_id:Int) return new GLProgram(_id);
    @:from inline static public function fromDynamic(_id:Dynamic) return new GLProgram(Std.int(_id));
}