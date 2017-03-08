///c8_8XY4(opcode);
gml_pragma("forceinline");

var VX = REG[(argument0 & $0F00) >> 8];
var VY = REG[(argument0 & $00F0) >> 4];

if((VX + VY) > 255) { REG[$F] = 1; }else{ REG[$F] = 0; }
REG[(argument0 & $0F00) >> 8] = (VX + VY) & $FF;
