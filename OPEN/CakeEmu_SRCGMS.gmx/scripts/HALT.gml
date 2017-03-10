///HALT();
gml_pragma("forceinline");

if(!IME) {
    PC++;
}else{
    bHalt = true;
}

REG[Reg.M] = 1;
REG[Reg.T] = 4;
