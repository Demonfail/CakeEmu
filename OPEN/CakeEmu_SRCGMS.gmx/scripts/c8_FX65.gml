///c8_FX65(opcode);
gml_pragma("forceinline");

var tmp = (argument0 & $0F00) >> 8;

buffer_seek(RAM, buffer_seek_start, I);
var i = 0;
repeat(tmp+1) {
    REG[i] = buffer_read(RAM, buffer_u8);
    i++;
}
