///LDHLSPn();
gml_pragma("forceinline");

var i = ReadByte(PC); PC++;

if(i > 127) {
    i = -((~i + 1) & $FF);
}

i += SP;

REG[Reg.H] = (i >> 8) & $FF;
REG[Reg.L] = (i & $FF);
REG[Reg.M] = 3;
REG[Reg.T] = 12;

