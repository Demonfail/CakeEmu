///SetBC(WORD);
gml_pragma("forceinline");
REG[Reg.B] = (argument[0] >> 8);
REG[Reg.C] = (argument[0] & $FF);
