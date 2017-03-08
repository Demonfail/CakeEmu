///CCF();
gml_pragma("forceinline");

var ci = ternary(REG[Reg.F] & $10, 0, $10);
REG[Reg.F] = (REG[Reg.F & $EF]) + ci;

REG[Reg.M] = 1;
REG[Reg.T] = 4;
