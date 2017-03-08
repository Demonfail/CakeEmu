///DJNZn();
gml_pragma("forceinline");

var i = ReadByte(PC);
if(i > 127) {
    i = -((~i + 1) & $FF);
}
PC++;

REG[Reg.M] = 2;
REG[Reg.B] = (REG[Reg.B] - 1);
if(REG[Reg.B]) {
    PC += i;
}
REG[Reg.M] = (REG[Reg.M] + 1);
