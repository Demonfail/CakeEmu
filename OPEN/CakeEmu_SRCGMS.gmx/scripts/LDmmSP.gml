///LDmmSP();
gml_pragma("forceinline");

var i = ReadWord(PC); PC += 2;
WriteWord(i, SP);

REG[Reg.M] = 5;
REG[Reg.T] = 20;
