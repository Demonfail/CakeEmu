///SetAF(WORD);
gml_pragma("forceinline");
REG[Reg.A] = (argument[0] >> 8);
REG[Reg.F] = (argument[0] & $FF);
