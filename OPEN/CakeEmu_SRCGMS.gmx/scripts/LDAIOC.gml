///LDAIOC();
gml_pragma("forceinline");

REG[Reg.A] = ReadByte($FF00 + REG[Reg.C]);
REG[Reg.M] = 2;
REG[Reg.T] = 8;
