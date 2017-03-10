///JRNCn();
gml_pragma("forceinline");

var i = ReadByte(PC);
if(i > 127) {
    i = -i;    
}
i = (i & $7E);

if(GBFlagGet(FMask.C)) {
    REG[Reg.M] = 2;
    REG[Reg.T] = 8;
}else{
    PC += i;
    REG[Reg.M] = 3;
    REG[Reg.T] = 12;
}
