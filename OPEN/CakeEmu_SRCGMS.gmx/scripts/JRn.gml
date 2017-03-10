///JRn();
gml_pragma("forceinline"); PC++;

var i = ReadByte(PC);

if((i >> 7) == 1) {
    i &= (i & $7F)
    i = -i;
}
PC += i;

REG[Reg.M] = 3;
REG[Reg.T] = 12;
