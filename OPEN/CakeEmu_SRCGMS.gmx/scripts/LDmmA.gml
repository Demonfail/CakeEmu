///LDmmA();
gml_pragma("forceinline");

WriteByte(ReadWord(PC), REG[Reg.A]);
PC+=2;

REG[Reg.M] = 4;
REG[Reg.T] = 16;
