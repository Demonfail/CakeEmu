///c8_EXA1(opcode);
gml_pragma("forceinline");
if(KEY[REG[(argument0 & $0F00) >> 8]] == 0) {
    PC+=2;
}

