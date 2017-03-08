///WriteWord(off, word);
gml_pragma("forceinline");

WriteByte(argument0    , argument1 & $FF);
WriteByte(argument0 + 1,  argument1 >> 8);
