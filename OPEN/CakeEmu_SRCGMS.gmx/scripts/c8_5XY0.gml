///c8_5XY0(opcode);
gml_pragma("forceinline");

if(REG[(argument0 & $0F00) >> 8] == REG[(argument0 & $00F0) >> 4]) {
    PC += 2;
}
