///ReadByte(off);
gml_pragma("forceinline");

var addr = argument[0];

switch(addr & $F000) {
    case $0000: //ROM 0
        if(INBIOS) { //BIOS
            if(addr < $0100) {
                return BIOS[addr];
            }else
            if(PC == $100) {
                INBIOS = false;
            }
        }
     case $1000: //ROM 0 (continued)
     case $2000:
     case $3000:
        return ROM[addr];
       
     case $4000: //ROM 1
     case $5000:
     case $6000:
     case $7000:
        return ROM[addr];
        
     case $8000: //GPU VRam
     case $9000:
        return VRAM[addr & $1FFF];
        
     case $A000: //External Ram
     case $B000:
        return ERAM[addr & $1FFF];
        
     case $C000: //Working Ram
     case $D000:
        return WRAM[addr & $1FFF];
        
     case $E000: //Working Ram (Shadow)
        return WRAM[addr & $1FFF];
        
     case $F000: //Working Ram (Shadow), I/O, Zero Page.
        switch(addr & $0F00) {
            case $000: case $100: case $200: case $300:
            case $400: case $500: case $600: case $700:
            case $800: case $900: case $A00: case $B00:
            case $C00: case $D00:
                return WRAM[addr & $1FFF];
                
            case $E00:
                if(addr < $FEA0) {
                    return OAM[addr & $FF];
                }else{
                    return $00;
                }
                
            case $F00:
                if(addr >= $FF80) {
                    return ZRAM[addr & $7F];
                }else{
                    return 0;
                }
        
        }        
}
