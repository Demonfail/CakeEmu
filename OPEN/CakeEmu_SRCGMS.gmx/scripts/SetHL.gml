///SetHL(WORD);
gml_pragma("forceinline");
REG[Reg.H] = (argument[0] >> 8);
REG[Reg.L] = (argument[0] & $FF);
