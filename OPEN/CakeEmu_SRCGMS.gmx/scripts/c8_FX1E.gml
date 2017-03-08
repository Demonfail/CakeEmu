///c8_FX1E(opcode);
gml_pragma("forceinline");

REG[$F] = 0;

I += REG[(argument0 & $0F00) >> 8];
if(I > $FFF) {
    REG[$F] = 1;
}
