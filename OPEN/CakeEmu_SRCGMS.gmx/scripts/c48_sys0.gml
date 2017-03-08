///c8_sys0(opcode);
gml_pragma("forceinline");

switch((argument0 & $00F0) >> 4) {
    case $C: c48_00CN(argument0); PC += 2; break;
     
    case $E:
        switch((argument0 & $000F)) {
            case $0: c48_00E0(); PC += 2; break;            
            case $E: c8_00EE(); break;
        }
    break;
    
    case $F:
        switch((argument0 & $000F)) {
            case $D: c48_00FD(); PC += 2; break;
            case $E: c48_00FE(); PC += 2; break;
            case $F: c48_00FF(); PC += 2; break;
        }        
    break;
    
    default:
        return true; 
    break;  
}
return false;
