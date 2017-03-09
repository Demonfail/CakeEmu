///SETm(ind);
gml_pragma("forceinline");

var i = ReadByte((REG[Reg.H] << 8) + REG[Reg.L]);
    i |= argument1;
WriteByte((REG[Reg.H] << 8) + REG[Reg.L], i);
REG[Reg.M] = 4;
REG[Reg.T] = 16;
