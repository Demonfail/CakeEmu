///LDHLmn();
gml_pragma("forceinline");

WriteByte((REG[Reg.H] << 8) + REG[Reg.L], ReadByte(PC));
PC++;
REG[Reg.M] = 3;
REG[Reg.T] = 12;
