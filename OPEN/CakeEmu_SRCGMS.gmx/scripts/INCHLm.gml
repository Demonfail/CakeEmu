///INCHLm();
gml_pragma("forceinline");

var i = (ReadByte((REG[Reg.H] << 8) + REG[Reg.L]) + 1) & $FF;
WriteByte((REG[Reg.H] << 8) + REG[Reg.L], i);

REG[Reg.F] = ternary(i, 0, $80);
REG[Reg.M] = 3;
REG[Reg.T] = 12;
