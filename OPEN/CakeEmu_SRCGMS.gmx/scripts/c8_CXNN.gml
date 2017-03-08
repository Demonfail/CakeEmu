//c8_CXNN(opcode);
gml_pragma("forceinline");

REG[(argument0 & $0F00) >> 8] = irandom(255) & (argument0 & $00FF);
