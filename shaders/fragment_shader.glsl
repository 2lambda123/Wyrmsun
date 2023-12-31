varying highp vec2 qt_TexCoord0;
uniform lowp float qt_Opacity;
uniform sampler2D src;
uniform highp float opacity_multiplier;
uniform highp float red_change;
uniform highp float green_change;
uniform highp float blue_change;

//xBRZ variables
#if __VERSION__ >= 130
#define COMPAT_VARYING in
#else
#define COMPAT_VARYING varying
#endif

COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
	vec2 _video_size;
	vec2 _texture_size;
	vec2 _output_dummy_size;
};
struct out_vertex {
	vec4 _color;
	vec2 _texCoord;
	vec4 _t1;
	vec4 _t2;
	vec4 _t3;
};
vec4 _ret_0;
float _TMP30;
float _TMP29;
float _TMP28;
vec3 _TMP27;
vec3 _TMP26;
vec3 _TMP25;
vec3 _TMP24;
vec4 _TMP23;
vec4 _TMP22;
vec4 _TMP35;
bvec4 _TMP15;
bvec4 _TMP14;
bvec4 _TMP13;
bvec4 _TMP12;
bvec4 _TMP11;
bvec4 _TMP10;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
input_dummy _IN1;
vec2 _x0044;
vec4 _r0064;
vec4 _r0074;
vec4 _r0084;
vec4 _TMP95;
vec4 _a0098;
vec4 _TMP101;
vec4 _a0104;
vec4 _TMP107;
vec4 _a0110;
vec4 _TMP113;
vec4 _a0116;
vec4 _TMP119;
vec4 _a0122;
vec4 _TMP125;
vec4 _a0128;
vec4 _x0130;
vec4 _TMP131;
vec4 _x0138;
vec4 _TMP139;
vec4 _x0146;
vec4 _TMP147;
vec4 _x0154;
vec4 _TMP155;
vec4 _TMP163;
vec4 _a0166;
vec4 _TMP167;
vec4 _a0170;
vec4 _TMP171;
vec4 _a0174;
vec4 _TMP177;
vec4 _a0180;
vec4 _TMP181;
vec4 _a0184;
vec4 _TMP185;
vec4 _a0188;
vec4 _TMP189;
vec4 _a0192;
vec4 _TMP193;
vec4 _a0196;
vec4 _TMP197;
vec4 _a0200;
vec4 _TMP201;
vec4 _a0204;
vec4 _TMP205;
vec4 _a0208;
vec4 _TMP209;
vec4 _a0212;
float _t0220;
float _t0224;
float _t0228;
float _t0232;
vec3 _df0236;
vec3 _a0238;
vec3 _df0240;
vec3 _a0242;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
 
uniform int frameDirection;
uniform int frameCount;
uniform vec2 outputSize;
uniform vec2 textureSize;
uniform vec2 inputSize;

void apply_rgb_change(inout highp vec4 tmp_frag_color)
{
	tmp_frag_color.r = min(max(tmp_frag_color.r + red_change, 0.0), 1.0);
	tmp_frag_color.g = min(max(tmp_frag_color.g + green_change, 0.0), 1.0);
	tmp_frag_color.b = min(max(tmp_frag_color.b + blue_change, 0.0), 1.0);
}

void apply_xbrz(out highp vec4 tmp_frag_color)
{
	bvec4 _edri;
	bvec4 _edr;
	bvec4 _edr_left;
	bvec4 _edr_up;
	bvec4 _px;
	bvec4 _interp_restriction_lv0;
	bvec4 _interp_restriction_lv1;
	bvec4 _interp_restriction_lv2_left;
	bvec4 _interp_restriction_lv2_up;
	vec4 _fx;
	vec4 _fx_left;
	vec4 _fx_up;
	vec2 _fp;
	vec4 _fx45i;
	vec4 _fx45;
	vec4 _fx30;
	vec4 _fx60;
	vec4 _wd1;
	vec4 _wd2;
	vec4 _maximos;
	vec3 _res1;
	vec3 _res2;
	vec3 _res;
	_x0044 = TEX0.xy*textureSize;
	_fp = fract(_x0044);
	_TMP0 = texture2D(src, TEX1.xw);
	_TMP1 = texture2D(src, TEX1.yw);
	_TMP2 = texture2D(src, TEX1.zw);
	_TMP3 = texture2D(src, TEX2.xw);
	_TMP4 = texture2D(src, TEX2.yw);
	_TMP5 = texture2D(src, TEX2.zw);
	_TMP6 = texture2D(src, TEX3.xw);
	_TMP7 = texture2D(src, TEX3.yw);
	_TMP8 = texture2D(src, TEX3.zw);
	_r0064.x = dot(_TMP1.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0064.y = dot(_TMP3.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0064.z = dot(_TMP7.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0064.w = dot(_TMP5.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0074.x = dot(_TMP2.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0074.y = dot(_TMP0.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0074.z = dot(_TMP6.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0074.w = dot(_TMP8.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0084.x = dot(_TMP4.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0084.y = dot(_TMP4.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0084.z = dot(_TMP4.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_r0084.w = dot(_TMP4.xyz, vec3( 1.02047997E+01, 3.43296013E+01, 3.46560001E+00));
	_fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
	_fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
	_fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
	_interp_restriction_lv0 = bvec4(_r0084.x != _r0064.w && _r0084.x != _r0064.z, _r0084.y != _r0064.x && _r0084.y != _r0064.w, _r0084.z != _r0064.y && _r0084.z != _r0064.x, _r0084.w != _r0064.z && _r0084.w != _r0064.y);
	_a0098 = _r0064.wxyz - _r0064;
	_TMP95 = abs(_a0098);
	_TMP10 = bvec4(_TMP95.x < 1.50000000E+01, _TMP95.y < 1.50000000E+01, _TMP95.z < 1.50000000E+01, _TMP95.w < 1.50000000E+01);
	_a0104 = _r0064.wxyz - _r0074;
	_TMP101 = abs(_a0104);
	_TMP11 = bvec4(_TMP101.x < 1.50000000E+01, _TMP101.y < 1.50000000E+01, _TMP101.z < 1.50000000E+01, _TMP101.w < 1.50000000E+01);
	_a0110 = _r0064.zwxy - _r0064.yzwx;
	_TMP107 = abs(_a0110);
	_TMP12 = bvec4(_TMP107.x < 1.50000000E+01, _TMP107.y < 1.50000000E+01, _TMP107.z < 1.50000000E+01, _TMP107.w < 1.50000000E+01);
	_a0116 = _r0064.zwxy - _r0074.zwxy;
	_TMP113 = abs(_a0116);
	_TMP13 = bvec4(_TMP113.x < 1.50000000E+01, _TMP113.y < 1.50000000E+01, _TMP113.z < 1.50000000E+01, _TMP113.w < 1.50000000E+01);
	_a0122 = _r0084 - _r0074.zwxy;
	_TMP119 = abs(_a0122);
	_TMP14 = bvec4(_TMP119.x < 1.50000000E+01, _TMP119.y < 1.50000000E+01, _TMP119.z < 1.50000000E+01, _TMP119.w < 1.50000000E+01);
	_a0128 = _r0084 - _r0074;
	_TMP125 = abs(_a0128);
	_TMP15 = bvec4(_TMP125.x < 1.50000000E+01, _TMP125.y < 1.50000000E+01, _TMP125.z < 1.50000000E+01, _TMP125.w < 1.50000000E+01);
	_interp_restriction_lv1 = bvec4(_interp_restriction_lv0.x && (!_TMP10.x && !_TMP11.x || !_TMP12.x && !_TMP13.x || _TMP14.x || _TMP15.x), _interp_restriction_lv0.y && (!_TMP10.y && !_TMP11.y || !_TMP12.y && !_TMP13.y || _TMP14.y || _TMP15.y), _interp_restriction_lv0.z && (!_TMP10.z && !_TMP11.z || !_TMP12.z && !_TMP13.z || _TMP14.z || _TMP15.z), _interp_restriction_lv0.w && (!_TMP10.w && !_TMP11.w || !_TMP12.w && !_TMP13.w || _TMP14.w || _TMP15.w));
	_interp_restriction_lv2_left = bvec4(_r0084.x != _r0074.z && _r0064.y != _r0074.z, _r0084.y != _r0074.w && _r0064.z != _r0074.w, _r0084.z != _r0074.x && _r0064.w != _r0074.x, _r0084.w != _r0074.y && _r0064.x != _r0074.y);
	_interp_restriction_lv2_up = bvec4(_r0084.x != _r0074.x && _r0064.x != _r0074.x, _r0084.y != _r0074.y && _r0064.y != _r0074.y, _r0084.z != _r0074.z && _r0064.z != _r0074.z, _r0084.w != _r0074.w && _r0064.w != _r0074.w);
	_x0130 = (((_fx + vec4( 3.33333343E-01, 3.33333343E-01, 3.33333343E-01, 3.33333343E-01)) - vec4( 1.50000000E+00, 5.00000000E-01, -5.00000000E-01, 5.00000000E-01)) - vec4( 2.50000000E-01, 2.50000000E-01, 2.50000000E-01, 2.50000000E-01))/vec4( 6.66666687E-01, 6.66666687E-01, 6.66666687E-01, 6.66666687E-01);
	_TMP35 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0130);
	_TMP131 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP35);
	_x0138 = ((_fx + vec4( 3.33333343E-01, 3.33333343E-01, 3.33333343E-01, 3.33333343E-01)) - vec4( 1.50000000E+00, 5.00000000E-01, -5.00000000E-01, 5.00000000E-01))/vec4( 6.66666687E-01, 6.66666687E-01, 6.66666687E-01, 6.66666687E-01);
	_TMP35 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0138);
	_TMP139 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP35);
	_x0146 = ((_fx_left + vec4( 1.66666672E-01, 3.33333343E-01, 1.66666672E-01, 3.33333343E-01)) - vec4( 1.00000000E+00, 1.00000000E+00, -5.00000000E-01, 0.00000000E+00))/vec4( 3.33333343E-01, 6.66666687E-01, 3.33333343E-01, 6.66666687E-01);
	_TMP35 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0146);
	_TMP147 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP35);
	_x0154 = ((_fx_up + vec4( 3.33333343E-01, 1.66666672E-01, 3.33333343E-01, 1.66666672E-01)) - vec4( 2.00000000E+00, 0.00000000E+00, -1.00000000E+00, 5.00000000E-01))/vec4( 6.66666687E-01, 3.33333343E-01, 6.66666687E-01, 3.33333343E-01);
	_TMP35 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0154);
	_TMP155 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP35);
	_a0166 = _r0074.zwxy - _r0084;
	_TMP163 = abs(_a0166);
	_a0170 = _r0084 - _r0074;
	_TMP167 = abs(_a0170);
	_a0174 = _r0064.zwxy - _r0064.wxyz;
	_TMP171 = abs(_a0174);
	_wd1 = _TMP163 + _TMP167 + 3.00000000E+00*_TMP171;
	_a0180 = _r0064 - _r0064.wxyz;
	_TMP177 = abs(_a0180);
	_a0184 = _r0064.yzwx - _r0064.zwxy;
	_TMP181 = abs(_a0184);
	_a0188 = _r0084 - _r0074.wxyz;
	_TMP185 = abs(_a0188);
	_wd2 = _TMP177 + _TMP181 + 3.00000000E+00*_TMP185;
	_edri = bvec4(_wd1.x <= _wd2.x && _interp_restriction_lv0.x, _wd1.y <= _wd2.y && _interp_restriction_lv0.y, _wd1.z <= _wd2.z && _interp_restriction_lv0.z, _wd1.w <= _wd2.w && _interp_restriction_lv0.w);
	_edr = bvec4(_wd1.x < _wd2.x && _interp_restriction_lv1.x, _wd1.y < _wd2.y && _interp_restriction_lv1.y, _wd1.z < _wd2.z && _interp_restriction_lv1.z, _wd1.w < _wd2.w && _interp_restriction_lv1.w);
	_a0192 = _r0064.wxyz - _r0074.zwxy;
	_TMP189 = abs(_a0192);
	_a0196 = _r0064.zwxy - _r0074;
	_TMP193 = abs(_a0196);
	_edr_left = bvec4((2.00000000E+00*_TMP189).x <= _TMP193.x && _interp_restriction_lv2_left.x && _edr.x, (2.00000000E+00*_TMP189).y <= _TMP193.y && _interp_restriction_lv2_left.y && _edr.y, (2.00000000E+00*_TMP189).z <= _TMP193.z && _interp_restriction_lv2_left.z && _edr.z, (2.00000000E+00*_TMP189).w <= _TMP193.w && _interp_restriction_lv2_left.w && _edr.w);
	_a0200 = _r0064.wxyz - _r0074.zwxy;
	_TMP197 = abs(_a0200);
	_a0204 = _r0064.zwxy - _r0074;
	_TMP201 = abs(_a0204);
	_edr_up = bvec4(_TMP197.x >= (2.00000000E+00*_TMP201).x && _interp_restriction_lv2_up.x && _edr.x, _TMP197.y >= (2.00000000E+00*_TMP201).y && _interp_restriction_lv2_up.y && _edr.y, _TMP197.z >= (2.00000000E+00*_TMP201).z && _interp_restriction_lv2_up.z && _edr.z, _TMP197.w >= (2.00000000E+00*_TMP201).w && _interp_restriction_lv2_up.w && _edr.w);
	_fx45 = vec4(float(_edr.x), float(_edr.y), float(_edr.z), float(_edr.w))*_TMP139;
	_fx30 = vec4(float(_edr_left.x), float(_edr_left.y), float(_edr_left.z), float(_edr_left.w))*_TMP147;
	_fx60 = vec4(float(_edr_up.x), float(_edr_up.y), float(_edr_up.z), float(_edr_up.w))*_TMP155;
	_fx45i = vec4(float(_edri.x), float(_edri.y), float(_edri.z), float(_edri.w))*_TMP131;
	_a0208 = _r0084 - _r0064.wxyz;
	_TMP205 = abs(_a0208);
	_a0212 = _r0084 - _r0064.zwxy;
	_TMP209 = abs(_a0212);
	_px = bvec4(_TMP205.x <= _TMP209.x, _TMP205.y <= _TMP209.y, _TMP205.z <= _TMP209.z, _TMP205.w <= _TMP209.w);
	_TMP22 = max(_fx30, _fx60);
	_TMP23 = max(_fx45, _fx45i);
	_maximos = max(_TMP22, _TMP23);
	_t0220 = float(_px.x);
	_TMP24 = _TMP7.xyz + _t0220*(_TMP5.xyz - _TMP7.xyz);
	_res1 = _TMP4.xyz + _maximos.x*(_TMP24 - _TMP4.xyz);
	_t0224 = float(_px.z);
	_TMP25 = _TMP1.xyz + _t0224*(_TMP3.xyz - _TMP1.xyz);
	_res1 = _res1 + _maximos.z*(_TMP25 - _res1);
	_t0228 = float(_px.y);
	_TMP26 = _TMP5.xyz + _t0228*(_TMP1.xyz - _TMP5.xyz);
	_res2 = _TMP4.xyz + _maximos.y*(_TMP26 - _TMP4.xyz);
	_t0232 = float(_px.w);
	_TMP27 = _TMP3.xyz + _t0232*(_TMP7.xyz - _TMP3.xyz);
	_res2 = _res2 + _maximos.w*(_TMP27 - _res2);
	_a0238 = _TMP4.xyz - _res1;
	_df0236 = abs(_a0238);
	_TMP28 = _df0236.x + _df0236.y + _df0236.z;
	_a0242 = _TMP4.xyz - _res2;
	_df0240 = abs(_a0242);
	_TMP29 = _df0240.x + _df0240.y + _df0240.z;
	_TMP30 = float((_TMP29 >= _TMP28));
	_res = _res1 + _TMP30*(_res2 - _res1);
	_ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
	
	tmp_frag_color = _ret_0;
}

void main()
{
	highp vec4 tmp_frag_color = texture2D(src, qt_TexCoord0);
	highp float original_opacity = tmp_frag_color.a;
	
	apply_xbrz(tmp_frag_color);

	apply_rgb_change(tmp_frag_color);
	tmp_frag_color.a = original_opacity;
	tmp_frag_color.a *= opacity_multiplier;
	
	gl_FragColor = tmp_frag_color * tmp_frag_color.a;
};
