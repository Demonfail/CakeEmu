///RLA();
gml_pragma("forceinline");

var ci = ternary(REG[Reg.F] & $10, 1 , 0);
var co = ternary(REG[Reg.A] & $80, 10, 0);

REG[Reg.A] = ((REG[Reg.A] << 1) + ci) & $FF;
REG[Reg.F] = (REG[Reg.F] & $EF) + co;
REG[Reg.M] = 1;
REG[Reg.T] = 4;
