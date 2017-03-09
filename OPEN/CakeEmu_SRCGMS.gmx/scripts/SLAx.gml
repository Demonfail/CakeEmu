///SLAx(reg_x);
gml_pragma("forceinline");

var co = ternary(REG[argument0] & $80, $10, 0);

REG[argument0] = (REG[argument0] << 1) & $FF;
REG[Reg.F]     = ternary(REG[argument0], 0, $80);
REG[Reg.F]     = (REG[Reg.F] & $Ef) + co;
REG[Reg.M] = 2;
REG[Reg.T] = 8;
