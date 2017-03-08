///c8_math(opcode);
gml_pragma("forceinline");

switch((argument0 & $000F)) {
    case $0: c8_8XY0(argument0); PC += 2; break;
    case $1: c8_8XY1(argument0); PC += 2; break;
    case $2: c8_8XY2(argument0); PC += 2; break;
    case $3: c8_8XY3(argument0); PC += 2; break;
    case $4: c8_8XY4(argument0); PC += 2; break;
    case $5: c8_8XY5(argument0); PC += 2; break;
    case $6: c8_8XY6(argument0); PC += 2; break;
    case $7: c8_8XY7(argument0); PC += 2; break;
    case $E: c8_8XYE(argument0); PC += 2; break;
    
    default: return true; break;  
}
return false;
