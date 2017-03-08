///c8_sys1(opcode);
gml_pragma("forceinline");

switch((argument0 & $00FF)) {
    case $07: c8_FX07(argument0); PC += 2; break;
    case $0A: c8_FX0A(argument0); break;
    case $15: c8_FX15(argument0); PC += 2; break;
    case $18: c8_FX18(argument0); PC += 2; break;
    case $1E: c8_FX1E(argument0); PC += 2; break;
    case $29: c8_FX29(argument0); PC += 2; break;        
    case $33: c8_FX33(argument0); PC += 2; break;
    case $55: c8_FX55(argument0); PC += 2; break;
    case $65: c8_FX65(argument0); PC += 2; break;
        
    default: return true; break;  
}
return false;
