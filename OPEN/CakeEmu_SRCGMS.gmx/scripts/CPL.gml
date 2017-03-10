///CPL();
gml_pragma("forceinline");

REG[Reg.A] = -REG[Reg.A];
GBFlagSet(FMask.N | FMask.H);
