///LDAIOn();
gml_pragma("forceinline");

REG[Reg.A] = ReadByte($FF00 + ReadByte(PC));
PC++;

REG[Reg.M] = 3;
REG[Reg.T] = 12;
