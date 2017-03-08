///JRCn();
gml_pragma("forceinline");

var i = ReadByte(pc);

if(i > 127) {
    i = -((~i + 1) & $FF);
}
PC++;

REG[Reg.M] = 2;
REG[Reg.T] = 8;
if((REG[Reg.F] & $80) == $00) {
    PC += i;
    REG[Reg.M] += 1;
    REG[Reg.T] += 4;
}
