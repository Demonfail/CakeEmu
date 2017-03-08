//c48_DXYN(opcode);
gml_pragma("forceinline");

var sx = REG[(argument0 & $0F00) >> 8];
var sy = REG[(argument0 & $00F0) >> 4];
var sh =     (argument0 & $000F);
var sw = 8;

if(sh == 0) {
    var sw = 16;
    var sh = 16;
}

REG[$F] = $0;
for(var i = 0; i < sh; ++i)  {
    var line = buffer_read_from(RAM, (I + i), buffer_u8);
    
    for(var j = 0; j < sw; ++j) {
        var pixel = line & ($80 >> j);
        
        if(pixel != 0) {
            var px = (sx + j) % 128;
            var py = (sy + i) % 64;
            var in = py * 128 + px;
    
            if(GPU[in] == 1) {
                REG[$F] = 1;
            }
            GPU[in] ^= 1;
        }
    }
}
GPU_REDRAW = true;
