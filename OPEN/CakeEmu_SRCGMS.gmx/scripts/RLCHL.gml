///RLCHL(reg_x);
gml_pragma("forceinline");

var  i = ReadByte((REG[Reg.H] << 8) + REG[Reg.L]);
var ci = ternary(i & $80, $01, $00);
var co = ternary(i & $80, $10, $00);
i  = (i << 1) + ci;
i &= $FF;
WriteByte((REG[Reg.H] << 8) + REG[Reg.L], i);

REG[Reg.F] = ternary(i, 0, $80);
REG[Reg.F] = (REG[Reg.F] & $EF) + co;
REG[Reg.M] = 2;
REG[Reg.T] = 8;
