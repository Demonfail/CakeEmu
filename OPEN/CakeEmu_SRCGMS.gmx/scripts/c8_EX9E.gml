///c8_EX9E(opcode);
gml_pragma("forceinline");
if(KEY[REG[(argument0 & $0F00) >> 8]] == 1) {
    PC+=2;
}

