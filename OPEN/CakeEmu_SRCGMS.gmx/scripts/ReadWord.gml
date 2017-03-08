///ReadWord(off);
gml_pragma("forceinline");

return ReadByte(argument0) + (ReadByte(argument0+1) << 8);
