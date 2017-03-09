///JPHL();
gml_pragma("forceinline");

PC = (REG[Reg.H] << 8) + REG[Reg.L];
REG[Reg.M] = 1;
REG[Reg.T] = 4;
