xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 149;
 1.45343;-13.26959;1.91734;,
 2.19286;-11.74090;2.78142;,
 1.03137;-11.87023;3.32333;,
 2.70391;-11.90986;1.44961;,
 2.19286;-11.74090;2.78142;,
 2.40885;-12.96767;0.29511;,
 2.70391;-11.90986;1.44961;,
 1.28867;-13.34525;-0.16325;,
 2.40885;-12.96767;0.29511;,
 0.10934;-13.31411;0.32124;,
 1.28867;-13.34525;-0.16325;,
 -0.53888;-12.50929;1.47433;,
 0.10934;-13.31411;0.32124;,
 -0.10015;-12.16475;2.79891;,
 -0.53888;-12.50929;1.47433;,
 1.03137;-11.87023;3.32333;,
 -0.10015;-12.16475;2.79891;,
 -2.04409;-6.19248;3.43959;,
 -1.24559;-10.67141;3.94738;,
 0.98863;-10.25035;4.87692;,
 0.63907;-5.78972;4.66405;,
 -2.82132;-6.63217;0.54065;,
 -2.68655;-11.57364;1.34785;,
 -1.24559;-10.67141;3.94738;,
 -2.04409;-6.19248;3.43959;,
 -2.03587;-6.95667;-1.83840;,
 -1.21731;-11.20597;-1.29390;,
 -2.68655;-11.57364;1.34785;,
 -2.82132;-6.63217;0.54065;,
 0.66320;-7.11675;-2.93610;,
 1.14645;-11.01598;-2.32862;,
 -1.21731;-11.20597;-1.29390;,
 -2.03587;-6.95667;-1.83840;,
 3.35802;-6.56738;-2.43142;,
 3.48574;-10.70921;-1.24239;,
 1.14645;-11.01598;-2.32862;,
 0.66320;-7.11675;-2.93610;,
 4.43799;-6.04766;0.44808;,
 4.70655;-10.27860;1.35127;,
 3.48574;-10.70921;-1.24239;,
 3.35802;-6.56738;-2.43142;,
 3.33823;-5.72477;3.37498;,
 3.29711;-10.29484;3.60637;,
 4.70655;-10.27860;1.35127;,
 4.43799;-6.04766;0.44808;,
 0.63907;-5.78972;4.66405;,
 0.98863;-10.25035;4.87692;,
 3.29711;-10.29484;3.60637;,
 3.33823;-5.72477;3.37498;,
 -0.00207;0.38104;3.98332;,
 0.05756;0.42648;3.08673;,
 -1.25550;-0.85261;2.05354;,
 -2.01944;-0.88044;2.62356;,
 -1.95935;-3.13982;2.65044;,
 0.14496;-2.95106;3.76107;,
 -2.01944;-0.88044;2.62356;,
 -1.25550;-0.85261;2.05354;,
 -1.78395;-1.49514;0.11106;,
 -2.76805;-1.50946;0.11064;,
 -2.73286;-3.76380;0.12946;,
 -1.95935;-3.13982;2.65044;,
 -2.76805;-1.50946;0.11064;,
 -1.78395;-1.49514;0.11106;,
 -1.25550;-0.87603;-1.83142;,
 -2.06439;-0.95576;-2.36412;,
 -1.97995;-3.26052;-2.37146;,
 -2.73286;-3.76380;0.12946;,
 -2.06439;-0.95576;-2.36412;,
 -1.25550;-0.87603;-1.83142;,
 -0.80356;-0.06043;-2.66146;,
 -0.94977;-0.10537;-3.53696;,
 0.10478;-3.08587;-3.49438;,
 -1.97995;-3.26052;-2.37146;,
 -0.94977;-0.10537;-3.53696;,
 -0.80356;-0.06043;-2.66146;,
 1.70410;1.28136;-1.91603;,
 2.36101;1.34728;-2.54954;,
 2.67073;-2.53414;-2.43641;,
 0.10478;-3.08587;-3.49438;,
 2.36101;1.34728;-2.54954;,
 1.70410;1.28136;-1.91603;,
 2.26543;1.49019;0.11106;,
 3.23693;1.57017;0.11357;,
 3.60332;-2.26892;0.12293;,
 2.67073;-2.53414;-2.43641;,
 3.23693;1.57017;0.11357;,
 2.26543;1.49019;0.11106;,
 1.62702;1.02237;2.39816;,
 2.32451;1.03930;3.01753;,
 2.68836;-2.46642;2.67649;,
 3.60332;-2.26892;0.12293;,
 2.32451;1.03930;3.01753;,
 1.62702;1.02237;2.39816;,
 0.05756;0.42648;3.08673;,
 -0.00207;0.38104;3.98332;,
 0.14496;-2.95106;3.76107;,
 2.68836;-2.46642;2.67649;,
 1.01161;-11.76298;4.31167;,
 2.91289;-11.52288;3.45734;,
 3.29711;-10.29484;3.60637;,
 0.98863;-10.25035;4.87692;,
 2.91289;-11.52288;3.45734;,
 4.33127;-11.89345;1.37979;,
 4.70655;-10.27860;1.35127;,
 3.29711;-10.29484;3.60637;,
 3.48574;-10.70921;-1.24239;,
 4.70655;-10.27860;1.35127;,
 4.33127;-11.89345;1.37979;,
 3.02301;-11.69122;-0.80046;,
 1.14645;-11.01598;-2.32862;,
 3.48574;-10.70921;-1.24239;,
 3.02301;-11.69122;-0.80046;,
 1.23538;-11.92051;-2.02502;,
 -1.21731;-11.20597;-1.29390;,
 1.14645;-11.01598;-2.32862;,
 1.23538;-11.92051;-2.02502;,
 -0.76080;-12.13725;-0.83688;,
 -2.68655;-11.57364;1.34785;,
 -1.21731;-11.20597;-1.29390;,
 -0.76080;-12.13725;-0.83688;,
 -2.05767;-12.73672;1.34590;,
 -2.05767;-12.73672;1.34590;,
 -0.84015;-12.14449;3.46528;,
 -1.24559;-10.67141;3.94738;,
 -2.68655;-11.57364;1.34785;,
 -0.84015;-12.14449;3.46528;,
 1.01161;-11.76298;4.31167;,
 0.98863;-10.25035;4.87692;,
 -1.24559;-10.67141;3.94738;,
 1.32956;-13.67538;-1.09848;,
 1.28867;-13.34525;-0.16325;,
 0.10934;-13.31411;0.32124;,
 -0.58083;-13.62693;-0.33823;,
 1.23538;-11.92051;-2.02502;,
 -0.76080;-12.13725;-0.83688;,
 3.17108;-13.10034;-0.31272;,
 2.40885;-12.96767;0.29511;,
 1.28867;-13.34525;-0.16325;,
 1.32956;-13.67538;-1.09848;,
 3.02301;-11.69122;-0.80046;,
 1.23538;-11.92051;-2.02502;,
 4.33127;-11.89345;1.37979;,
 2.70391;-11.90986;1.44961;,
 2.40885;-12.96767;0.29511;,
 3.17108;-13.10034;-0.31272;,
 3.02301;-11.69122;-0.80046;,
 -0.53888;-12.50929;1.47433;,
 -2.05767;-12.73672;1.34590;,
 -0.76080;-12.13725;-0.83688;;
 
 60;
 3;0,1,2;,
 3;0,3,4;,
 3;0,5,6;,
 3;0,7,8;,
 3;0,9,10;,
 3;0,11,12;,
 3;0,13,14;,
 3;0,15,16;,
 4;17,18,19,20;,
 4;21,22,23,24;,
 4;25,26,27,28;,
 4;29,30,31,32;,
 4;33,34,35,36;,
 4;37,38,39,40;,
 4;41,42,43,44;,
 4;45,46,47,48;,
 4;49,50,51,52;,
 4;52,53,54,49;,
 4;53,17,20,54;,
 4;55,56,57,58;,
 4;58,59,60,55;,
 4;59,21,24,60;,
 4;61,62,63,64;,
 4;64,65,66,61;,
 4;65,25,28,66;,
 4;67,68,69,70;,
 4;70,71,72,67;,
 4;71,29,32,72;,
 4;73,74,75,76;,
 4;76,77,78,73;,
 4;77,33,36,78;,
 4;79,80,81,82;,
 4;82,83,84,79;,
 4;83,37,40,84;,
 4;85,86,87,88;,
 4;88,89,90,85;,
 4;89,41,44,90;,
 4;91,92,93,94;,
 4;94,95,96,91;,
 4;95,45,48,96;,
 4;97,2,1,98;,
 4;99,100,97,98;,
 4;101,4,3,102;,
 4;103,104,101,102;,
 4;105,106,107,108;,
 4;109,110,111,112;,
 4;113,114,115,116;,
 4;117,118,119,120;,
 4;121,14,13,122;,
 4;123,124,121,122;,
 4;125,16,15,126;,
 4;127,128,125,126;,
 4;129,130,131,132;,
 4;133,129,132,134;,
 4;135,136,137,138;,
 4;139,135,138,140;,
 4;141,142,143,144;,
 3;141,144,145;,
 4;132,131,146,147;,
 3;148,132,147;;
 
 MeshMaterialList {
  12;
  60;
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
  Material {
   0.800000;0.668000;0.376800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.112800;0.800000;0.024800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.536800;0.455200;0.323200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.671200;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.100000;0.083900;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.132000;0.558400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.401600;0.225600;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.787200;0.000000;1.000000;;
   27.000000;
   0.130000;0.130000;0.130000;;
   0.130000;0.127920;0.000000;;
  }
  Material {
   0.100000;0.800000;0.775200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   17.000000;
   0.150000;0.150000;0.150000;;
   0.150000;0.150000;0.150000;;
  }
  Material {
   0.800000;0.404800;0.050400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.615200;0.034400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  69;
  -0.375521;0.925304;-0.052882;,
  -0.183722;0.971534;0.149562;,
  -0.111201;0.992593;0.048919;,
  -0.262136;0.961403;-0.083595;,
  -0.468337;0.878389;0.095365;,
  -0.314795;0.910443;0.268323;,
  -0.104800;0.994440;-0.010253;,
  -0.291951;0.922298;-0.253240;,
  0.184959;-0.890578;0.415524;,
  0.378017;-0.847749;0.372056;,
  0.160006;-0.879499;0.448197;,
  0.461540;-0.795368;0.392901;,
  -0.166211;-0.912240;0.374423;,
  -0.061334;-0.928180;0.367043;,
  -0.072845;-0.942383;0.326508;,
  0.144999;-0.971779;0.186065;,
  0.359733;-0.869557;0.338325;,
  -0.645696;-0.207995;0.734721;,
  -0.950131;-0.311782;0.006576;,
  -0.632016;-0.339696;-0.696536;,
  0.021954;-0.326424;-0.944969;,
  0.694697;-0.259200;-0.670978;,
  0.984473;-0.166980;0.054128;,
  0.685894;-0.103883;0.720248;,
  0.050674;-0.154724;0.986657;,
  -0.748010;0.076235;0.659295;,
  -0.008507;0.167020;0.985917;,
  -0.999137;-0.038738;-0.014958;,
  -0.721788;-0.143138;-0.677151;,
  -0.047597;-0.145525;-0.988209;,
  0.683555;-0.023610;-0.729517;,
  0.993121;0.116922;0.006338;,
  0.708475;0.181777;0.681924;,
  -0.779903;0.065820;0.622431;,
  -0.050989;0.121668;0.991260;,
  -0.999948;0.004270;-0.009255;,
  -0.777135;-0.087919;-0.623163;,
  -0.097714;-0.067586;-0.992917;,
  0.687143;0.075920;-0.722544;,
  0.988794;0.148954;-0.009988;,
  0.720601;0.157741;0.675169;,
  0.123615;-0.980694;0.151518;,
  0.163371;-0.976702;0.139149;,
  0.104537;-0.916544;0.386030;,
  0.697200;-0.295269;-0.653244;,
  0.067333;-0.423437;-0.903420;,
  -0.586039;-0.411596;-0.697959;,
  -0.757352;-0.382585;-0.529194;,
  0.148204;-0.972799;0.178038;,
  0.066538;-0.899463;0.431903;,
  0.131781;-0.930643;0.341377;,
  0.142431;-0.873644;0.465252;,
  -0.780402;-0.031219;0.624498;,
  -0.055008;-0.048473;0.997309;,
  -0.999740;-0.022474;0.003850;,
  -0.802646;-0.079222;-0.591171;,
  -0.127319;-0.038514;-0.991114;,
  0.701335;0.072863;-0.709098;,
  0.996641;0.081841;-0.002879;,
  0.732323;0.017333;0.680737;,
  0.069779;-0.343607;0.936517;,
  0.638868;-0.270971;0.720016;,
  0.951922;-0.268663;-0.147189;,
  0.083237;-0.925774;0.368801;,
  -0.742982;-0.392673;0.542020;,
  -0.549463;-0.388864;0.739510;,
  0.063369;-0.390506;-0.918417;,
  -0.610225;-0.344753;-0.713282;,
  0.699337;-0.206062;-0.684446;;
  60;
  3;8,9,10;,
  3;8,11,9;,
  3;8,16,11;,
  3;8,15,16;,
  3;8,14,15;,
  3;8,12,14;,
  3;8,13,12;,
  3;8,10,13;,
  4;25,17,24,26;,
  4;27,18,17,25;,
  4;28,19,18,27;,
  4;29,20,19,28;,
  4;30,21,20,29;,
  4;31,22,21,30;,
  4;32,23,22,31;,
  4;26,24,23,32;,
  4;0,0,7,7;,
  4;52,33,34,53;,
  4;33,25,26,34;,
  4;7,7,6,6;,
  4;54,35,33,52;,
  4;35,27,25,33;,
  4;6,6,5,5;,
  4;55,36,35,54;,
  4;36,28,27,35;,
  4;5,5,4,4;,
  4;56,37,36,55;,
  4;37,29,28,36;,
  4;4,4,3,3;,
  4;57,38,37,56;,
  4;38,30,29,37;,
  4;3,3,2,2;,
  4;58,39,38,57;,
  4;39,31,30,38;,
  4;2,2,1,1;,
  4;59,40,39,58;,
  4;40,32,31,39;,
  4;1,1,0,0;,
  4;53,34,40,59;,
  4;34,26,32,40;,
  4;42,10,9,41;,
  4;23,24,60,61;,
  4;41,9,11,43;,
  4;22,23,61,62;,
  4;21,22,62,44;,
  4;20,21,44,45;,
  4;19,20,45,46;,
  4;18,19,46,47;,
  4;63,12,13,48;,
  4;17,18,64,65;,
  4;48,13,10,42;,
  4;24,17,65,60;,
  4;50,15,14,49;,
  4;45,66,67,46;,
  4;51,16,15,50;,
  4;44,68,66,45;,
  4;43,11,16,51;,
  3;62,68,44;,
  4;49,14,12,63;,
  3;46,67,47;;
 }
 MeshTextureCoords {
  149;
  0.500000;1.000000;,
  -0.000000;0.750000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  1.000000;0.750000;,
  1.000000;0.500000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.500000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  0.000000;0.250000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  0.000000;0.250000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  0.000000;0.250000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  0.000000;0.250000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  0.000000;0.250000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  0.000000;0.250000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  0.000000;0.250000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.250000;,
  0.000000;0.250000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  1.000000;0.750000;,
  -0.000000;0.750000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;;
 }
}