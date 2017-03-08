///INCSP();
gml_pragma("forceinline");

SP = (SP + 1) & $FFFF;
REG[Reg.M] = 1;
REG[Reg.T] = 4;
