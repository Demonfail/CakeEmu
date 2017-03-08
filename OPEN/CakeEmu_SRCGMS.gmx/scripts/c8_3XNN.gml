///c8_3XNN(opcode);
gml_pragma("forceinline");

if(REG[(argument0 & $0F00) >> 8] == (argument0 & $00FF)) {
    PC += 2;
}
