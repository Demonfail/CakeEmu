///RLx(reg_x);
gml_pragma("forceinline");

var ci = ternary(REG[Reg.F] & $10, 1, 0);
var co = ternary(REG[argument0] & $80, $10, 0);

REG[argument0]  = (REG[argument0] << 1) + ci;
REG[argument0] &= $FF;
REG[Reg.F] = ternary(REG[argument0], 0, $80);
REG[Reg.F] = (REG[Reg.F] & $EF) + co;
REG[Reg.M] = 2;
REG[Reg.T] = 8;
