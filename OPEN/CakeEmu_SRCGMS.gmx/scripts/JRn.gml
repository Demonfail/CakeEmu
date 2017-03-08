///JRn();
gml_pragma("forceinline");

var i = ReadByte(PC);

if(i > 127) {
    i = -((~i + 1) & $FF);
}
PC++;

REG[Reg.M] = 2;
REG[Reg.T] = 8;

PC += I;

REG[Reg.M] = 3;
REG[Reg.T] = 12;
