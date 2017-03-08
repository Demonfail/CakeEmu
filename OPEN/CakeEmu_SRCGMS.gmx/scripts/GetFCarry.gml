///GetFCarry();
gml_pragma("forceinline");
return (REG[Reg.F] & FMask.C) >> 4;
