///LDIOnA();
gml_pragma("forceinline");

WriteByte($FF00 + ReadByte(PC), REG[Reg.A]);
PC++;

REG[Reg.M] = 3;
REG[Reg.T] = 12;
