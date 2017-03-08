///c8_8XY5(opcode);
gml_pragma("forceinline");

var VX = REG[(argument0 & $0F00) >> 8];
var VY = REG[(argument0 & $00F0) >> 4];

REG[$F] = 0; 
if((VX - VY) >= 0) 
{ REG[$F] = 1; }

REG[(argument0 & $0F00) >> 8] = (VX - VY) & $FF;
