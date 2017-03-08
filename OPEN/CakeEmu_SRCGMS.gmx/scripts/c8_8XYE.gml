///c8_8XYE(opcode);
gml_pragma("forceinline");

var VX = (argument0 & $0F00) >> 8;
REG[$F] = (REG[VX] >> 7) & $01;
REG[VX] = (REG[VX] << 1) & $FF;
