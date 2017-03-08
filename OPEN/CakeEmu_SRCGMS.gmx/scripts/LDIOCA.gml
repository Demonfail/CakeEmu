///LDIOCA();
gml_pragma("forceinline");

WriteByte($FF00 + REG[Reg.C], REG[Reg.A]);
REG[Reg.M] = 2;
REG[Reg.T] = 8;
