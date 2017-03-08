///SetDE(WORD);
gml_pragma("forceinline");
REG[Reg.D] = (argument[0] >> 8);
REG[Reg.E] = (argument[0] & $FF);
