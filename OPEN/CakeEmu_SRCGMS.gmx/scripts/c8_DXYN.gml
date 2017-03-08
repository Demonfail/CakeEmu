//c8_DXYN(opcode);
gml_pragma("forceinline");

var sx = REG[(argument0 & $0F00) >> 8];
var sy = REG[(argument0 & $00F0) >> 4];
var sh =     (argument0 & $000F);

REG[$F] = $0;
for(var i = 0; i < sh; ++i)  {
    var line = buffer_read_from(RAM, (I + i), buffer_u8);
    
    for(var j = 0; j < 8; ++j) {
        var pixel = line & ($80 >> j);
        
        if(pixel != 0) {
            var px = (sx + j) % 64;
            var py = (sy + i) % 32;
            var in = py * 64 + px;
    
            if(GPU[in] == 1) {
                REG[$F] = 1;
            }
            GPU[in] ^= 1;
        }
    }
}
GPU_REDRAW = true;
