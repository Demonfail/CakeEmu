///SWAPx(reg_x);
gml_pragma("forceinline");

var tr = REG[argument0];

REG[argument0] = ((tr & $0F) << 4) | ((tr & $F0) >> 4);
REG[Reg.F]     = ternary(REG[argument0], 0, $80);
REG[Reg.M] = 1;
REG[Reg.T] = 4;
