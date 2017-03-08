///c8_sys0(opcode);
gml_pragma("forceinline");

switch((argument0 & $00F0) >> 4) {        
    case $E:
        switch((argument0 & $000F)) {
            case $0: c8_00E0(); PC += 2; break            
            case $E: c8_00EE(); break;
        }
    break;
    
    default:
        return true; 
    break;  
}
return false;
