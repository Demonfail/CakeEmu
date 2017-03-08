///GetFHalfCarry();
gml_pragma("forceinline");
return (REG[Reg.F] & FMask.H) >> 5;
