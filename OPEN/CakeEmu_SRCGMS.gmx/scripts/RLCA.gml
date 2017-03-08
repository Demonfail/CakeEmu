///RLCA();
gml_pragma("forceinline");

var ci = ternary((REG[Reg.A] & $80), $01, $00);
var co = ternary((REG[Reg.A] & $80), $10, $00);
REG[Reg.A] = ((REG[Reg.A] << 1) + ci) & $FF;
REG[Reg.F] = (REG[Reg.F] & $EF) + co;
REG[Reg.M] = 1;
REG[Reg.T] = 4;
