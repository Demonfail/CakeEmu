///c48_FX75(opcode);
gml_pragma("forceinline");

var tmp = (argument0 & $0F00) >> 8;

buffer_seek(RAM, buffer_seek_start, I);
var i = 0;
repeat(tmp+1) {
    RPL[i] = REG[i];
    i++;
}
