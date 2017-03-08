///c8_FX33(opcode);
gml_pragma("forceinline");

var reg = REG[(argument0 & $0F00) >> 8];

var H, T, O;

H = floor(reg/100); reg -= (100*H);
T = floor(reg/10);  reg -= (10*T);
O = floor(reg);

buffer_seek(RAM, buffer_seek_start, I);
    buffer_write(RAM, buffer_u8, H);
    buffer_write(RAM, buffer_u8, T);
    buffer_write(RAM, buffer_u8, O);
