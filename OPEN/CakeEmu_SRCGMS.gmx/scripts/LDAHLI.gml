///LDAHLI();
gml_pragma("forceinline");

REG[Reg.A] = ReadByte((REG[Reg.H] << 8) + REG[Reg.L]);
REG[Reg.L] = (REG[Reg.L] + 1) & $FF;

if(!REG[Reg.L]) {
    REG[Reg.H] = (REG[Reg.H] + 1) & $FF;
}
REG[Reg.M] = 2;
REG[Reg.T] = 8;
