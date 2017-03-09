///LDAmm();
gml_pragma("forceinline");

REG[Reg.A] = ReadByte(ReadWord(PC));
PC += 2;

REG[Reg.M] = 4;
REG[Reg.T] = 16;
