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
 50;
 0.00000;20.25014;0.00000;,
 4.63902;10.73667;4.63902;,
 4.63902;10.73667;-4.63902;,
 -4.63902;10.73667;4.63902;,
 4.63902;10.73667;4.63902;,
 4.63902;10.73667;-4.63902;,
 -4.63902;10.73667;-4.63902;,
 -4.63902;10.73667;-4.63902;,
 -4.63902;10.73667;4.63902;,
 0.00000;-20.97378;-0.00000;,
 0.00000;-19.74542;17.14099;,
 0.63411;-20.37953;10.22730;,
 0.63411;-19.11130;10.22730;,
 0.63411;-19.11130;10.22730;,
 -0.63411;-19.11130;10.22730;,
 -0.63411;-20.37953;10.22730;,
 0.63411;-20.37953;10.22730;,
 -0.63411;-19.11130;10.22730;,
 -0.63411;-20.37953;10.22730;,
 0.00000;-19.74542;3.31359;,
 0.00000;-19.74541;-3.31359;,
 0.63411;-20.37953;-10.22729;,
 0.63411;-19.11130;-10.22729;,
 -0.63411;-20.37953;-10.22729;,
 0.63411;-20.37953;-10.22729;,
 0.63411;-19.11130;-10.22729;,
 -0.63411;-19.11130;-10.22729;,
 -0.63411;-19.11130;-10.22729;,
 -0.63411;-20.37953;-10.22729;,
 0.00000;-19.74540;-17.14099;,
 17.14099;-19.74542;-0.00000;,
 10.22730;-20.37953;-0.63411;,
 10.22730;-19.11130;-0.63411;,
 10.22730;-19.11130;-0.63411;,
 10.22730;-19.11130;0.63411;,
 10.22730;-20.37953;0.63411;,
 10.22730;-20.37953;-0.63411;,
 10.22730;-19.11130;0.63411;,
 10.22730;-20.37953;0.63411;,
 3.31359;-19.74542;-0.00000;,
 -3.31359;-19.74541;0.00000;,
 -10.22729;-20.37953;-0.63411;,
 -10.22729;-19.11130;-0.63411;,
 -10.22729;-20.37953;0.63411;,
 -10.22729;-20.37953;-0.63411;,
 -10.22729;-19.11130;-0.63411;,
 -10.22729;-19.11130;0.63411;,
 -10.22729;-19.11130;0.63411;,
 -10.22729;-20.37953;0.63411;,
 -17.14099;-19.74540;0.00000;;
 
 40;
 3;0,1,2;,
 3;0,3,4;,
 3;0,5,6;,
 3;0,7,8;,
 3;9,2,1;,
 3;9,4,3;,
 3;9,6,5;,
 3;9,8,7;,
 3;10,11,12;,
 3;10,13,14;,
 3;10,15,16;,
 3;10,17,18;,
 3;19,12,11;,
 3;19,14,13;,
 3;19,16,15;,
 3;19,18,17;,
 3;20,21,22;,
 3;20,23,24;,
 3;20,25,26;,
 3;20,27,28;,
 3;29,22,21;,
 3;29,24,23;,
 3;29,26,25;,
 3;29,28,27;,
 3;30,31,32;,
 3;30,33,34;,
 3;30,35,36;,
 3;30,37,38;,
 3;39,32,31;,
 3;39,34,33;,
 3;39,36,35;,
 3;39,38,37;,
 3;40,41,42;,
 3;40,43,44;,
 3;40,45,46;,
 3;40,47,48;,
 3;49,42,41;,
 3;49,44,43;,
 3;49,46,45;,
 3;49,48,47;;
 
 MeshMaterialList {
  1;
  40;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.000000;0.502510;0.860000;0.770000;;
   25.000000;
   0.900000;0.900000;0.900000;;
   0.000000;0.467451;0.800000;;
  }
 }
 MeshNormals {
  60;
  0.898832;0.438294;0.000000;,
  0.000000;0.153608;-0.988132;,
  0.989468;-0.144752;-0.000000;,
  0.988132;0.153608;0.000000;,
  0.000000;0.153608;0.988132;,
  0.995820;0.000000;0.091335;,
  0.000000;-1.000000;0.000000;,
  0.995820;0.000000;-0.091335;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.995820;0.000000;0.091335;,
  0.000000;1.000000;0.000000;,
  0.995820;0.000000;-0.091335;,
  1.000000;0.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.091335;0.000000;-0.995820;,
  0.000000;-1.000000;-0.000000;,
  -0.091335;0.000000;-0.995820;,
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.091335;0.000000;-0.995820;,
  0.000000;1.000000;0.000000;,
  -0.091335;0.000000;-0.995820;,
  0.000000;0.000000;-1.000000;,
  -0.000000;-1.000000;0.000000;,
  0.000000;0.438294;0.898832;,
  0.000000;0.438294;-0.898832;,
  -0.898832;0.438294;0.000000;,
  -0.988132;0.153608;0.000000;,
  0.000000;-0.144752;0.989468;,
  0.000000;-0.144752;-0.989468;,
  -0.989468;-0.144752;0.000000;,
  0.000000;0.995820;0.091336;,
  -0.000000;-0.995820;0.091336;,
  -0.995820;0.000000;0.091335;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.995820;-0.091336;,
  0.000000;-0.995820;-0.091336;,
  -0.995820;0.000000;-0.091335;,
  -0.000000;-0.995820;0.091337;,
  0.000000;0.995820;0.091335;,
  -0.995820;0.000000;0.091335;,
  -1.000000;0.000000;0.000000;,
  0.000000;-0.995820;-0.091338;,
  0.000000;0.995820;-0.091334;,
  -0.995820;0.000000;-0.091335;,
  0.091336;0.995820;0.000000;,
  0.091336;-0.995820;-0.000000;,
  0.091335;0.000000;0.995820;,
  0.000000;0.000000;1.000000;,
  -0.091336;0.995820;0.000000;,
  -0.091336;-0.995820;0.000000;,
  -0.091335;0.000000;0.995820;,
  0.091337;-0.995820;-0.000000;,
  0.091335;0.995820;0.000000;,
  0.091335;0.000000;0.995820;,
  0.000000;0.000000;1.000000;,
  -0.091338;-0.995820;0.000000;,
  -0.091334;0.995820;0.000000;,
  -0.091335;0.000000;0.995820;;
  40;
  3;0,3,3;,
  3;25,4,4;,
  3;26,1,1;,
  3;27,28,28;,
  3;2,3,3;,
  3;29,4,4;,
  3;30,1,1;,
  3;31,28,28;,
  3;5,8,8;,
  3;32,9,9;,
  3;33,6,6;,
  3;34,35,35;,
  3;7,8,8;,
  3;36,9,9;,
  3;37,6,6;,
  3;38,35,35;,
  3;10,13,13;,
  3;39,14,14;,
  3;40,11,11;,
  3;41,42,42;,
  3;12,13,13;,
  3;43,14,14;,
  3;44,11,11;,
  3;45,42,42;,
  3;15,18,18;,
  3;46,19,19;,
  3;47,16,16;,
  3;48,49,49;,
  3;17,18,18;,
  3;50,19,19;,
  3;51,16,16;,
  3;52,49,49;,
  3;20,23,23;,
  3;53,24,24;,
  3;54,21,21;,
  3;55,56,56;,
  3;22,23,23;,
  3;57,24,24;,
  3;58,21,21;,
  3;59,56,56;;
 }
 MeshTextureCoords {
  50;
  0.500000;0.000000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  0.500000;1.000000;,
  0.500000;0.000000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.500000;1.000000;,
  0.500000;0.000000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  0.500000;1.000000;,
  0.500000;0.000000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.500000;1.000000;,
  0.500000;0.000000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  1.000000;0.500000;,
  0.000000;0.500000;,
  0.500000;1.000000;;
 }
}
