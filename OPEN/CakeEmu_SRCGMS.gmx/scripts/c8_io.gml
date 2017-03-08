///c8_io(opcode);
gml_pragma("forceinline");

switch((argument0 & $00FF)) {
    case $9E: c8_EX9E(argument0); PC += 2; break;
    case $A1: c8_EXA1(argument0); PC += 2; break;
        
    default: return true; break;  
}
return false;
