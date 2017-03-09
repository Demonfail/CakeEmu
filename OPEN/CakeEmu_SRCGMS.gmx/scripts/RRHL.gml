///RRHL();
gml_pragma("forceinline");

var i = ReadByte((REG[Reg.H] << 8) + REG[Reg.L]);
var ci = ternary(REG[Reg.F] & $10, $80, $00);
var co = ternary(i & $01, $10, $00);
i = (i >> 1) + ci;
i &= $FF;
REG[Reg.F] = ternary(i, 0, $80);
WriteByte((REG[Reg.H] << 8) + REG[Reg.L], i);

REG[Reg.F] = (REG[Reg.F] & $EF) + co;
REG[Reg.M] = 2;
REG[Reg.T] = 8;
