///LDHLDA();
gml_pragma("forceinline");

WriteByte((REG[Reg.H] << 8) + REG[Reg.L], REG[Reg.A]);
REG[Reg.L] = (REG[Reg.L] - 1) & $FF;
if(REG[Reg.L] == $FF) {
    REG[Reg.H] = (REG[Reg.H] - 1) & $FF;
}
REG[Reg.M] = 2;
REG[Reg.L] = 8;
