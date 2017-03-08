///JPZnn();
gml_pragma("forceinline");

REG[Reg.M] = 3;
REG[Reg.T] = 12;

if((REG[Reg.F] & $80) == $80) {
    PC = ReadWord(PC);
    REG[Reg.M]+=1;
    REG[Reg.T]+=4;
}else{
    PC += 2;
}
