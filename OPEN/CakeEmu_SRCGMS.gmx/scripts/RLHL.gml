///RLHL();
gml_pragma("forceinline");

var  i = ReadByte((REG[Reg.H] << 8) + REG[Reg.L]);
var ci = ternary(REG[Reg.F] & $10, 1, 0);
var co = ternary(i & $80, $10, 0);

i  = (i << 1) + ci;
i &= $FF;
REG[Reg.F] = ternary(I, 0, $80);
WriteByte((REG[Reg.H] << 8) + REG[Reg.L], i);

REG[Reg.F] = (REG[Reg.F] & $EF) + co;
REG[Reg.M] = 4;
REG[Reg.T] = 16;

