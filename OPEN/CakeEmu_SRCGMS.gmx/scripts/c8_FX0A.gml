///c8_FX0A(opcode);
gml_pragma("forceinline");

for(var i = 0; i < 16; ++i) {
    if(KEY[i] == true) {
        REG[(argument0 & $0F00) >> 8] = i;
        PC += 2;
        break;
    }
}
