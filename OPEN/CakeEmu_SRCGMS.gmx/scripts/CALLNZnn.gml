///CALLNZnn();
gml_pragma("forceinline");

REG[Reg.M] = 3;
REG[Reg.T] = 12;

if((REG[Reg.F] & $80) == $00) {
    SP -= 2;
    WriteWord(SP, PC+2);
    PC = ReadWord(PC);
    REG[Reg.M] = 5;
    REG[Reg.T] = 20;
}else{
    PC += 2;
}
