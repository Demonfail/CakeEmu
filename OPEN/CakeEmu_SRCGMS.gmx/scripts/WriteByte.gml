///WriteByte(off, byte);
gml_pragma("forceinline");

var addr = argument0;

switch(addr) {
    case $0000:
    case $1000:
        break;
    
    case $2000:
    case $3000:
        break;
    
    case $4000:
    case $5000:
        break;
    
    case $6000:
    case $7000:
        break;
        
    case $8000: //VRAM
    case $9000:
        VRAM[addr & $1FFF] = argument1;
    break;
    
    case $A000: //EXTERNAL RAM
    case $B000:
        ERAM[addr & $1FFF] = argument1;
    break;
    
    case $C000: //WORKING RAM
    case $D000:
    case $E000:
        WRAM[addr & $1FFF] = argument1;
    break;   
        
    case $F000:
        if(addr == $FFFF) {
        
        }else
        if(addr > $FF7F) {
            ZRAM[addr & $7F] = argument0;
        }else{
            /*
            switch(addr & $F) {
            
            }
            */
        }
    break;
}
