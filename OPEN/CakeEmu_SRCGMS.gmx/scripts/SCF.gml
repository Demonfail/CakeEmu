///SCF();
gml_pragma("forceinline");

REG[Reg.F] |= $10;
REG[Reg.M] = 1;
REG[Reg.T] = 4;
