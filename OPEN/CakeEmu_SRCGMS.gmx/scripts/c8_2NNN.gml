///c8_2NNN(opcode);
gml_pragma("forceinline");

STK[SP] = PC;
SP++;
PC = (argument0 & $0FFF);
