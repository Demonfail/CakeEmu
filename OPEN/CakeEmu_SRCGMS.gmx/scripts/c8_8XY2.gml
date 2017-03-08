///c8_8XY2(opcode);
gml_pragma("forceinline");

REG[(argument0 & $0F00) >> 8] &= REG[(argument0 & $00F0) >> 4];
