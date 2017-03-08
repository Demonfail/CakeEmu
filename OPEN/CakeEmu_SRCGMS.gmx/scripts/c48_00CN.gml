//c8_00EN(opcode);
gml_pragma("forceinline");

var N = (argument0 & $000F);

var tmp = array_create(128*64);
array_copy(tmp, 0, GPU, 0, 128*(64-N));
for(var i = 0; i < 128*64; ++i) {
    GPU[i] = $00;
}
array_copy(GPU, 128*N, tmp, 0, 128*(64-N));

GPU_REDRAW = true;
