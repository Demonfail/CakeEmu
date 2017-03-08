///CALLnn();
gml_pragma("forceinline");

SP -= 2;

WriteWord(SP, PC+2);
PC = ReadWord(PC);

REG[Reg.M] = 5;
REG[Reg.T] = 20;
