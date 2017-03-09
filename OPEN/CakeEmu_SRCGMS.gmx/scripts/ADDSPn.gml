///ADDSPn();
gml_pragma("forceinline");

var i = ReadByte(PC);
if(i > 127) {
    i = -((~i + 1) & $FF);
}
PC++;
SP+=i;

REG[Reg.M] = 4;
REG[Reg.T] = 16;
