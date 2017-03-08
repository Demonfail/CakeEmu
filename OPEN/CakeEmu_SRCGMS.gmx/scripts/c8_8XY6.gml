///c8_8XY6(opcode);
gml_pragma("forceinline");

var VX = (argument0 & $0F00) >> 8;
REG[$F] = (REG[VX] & $1);
REG[VX] = (REG[VX] >> 1);
