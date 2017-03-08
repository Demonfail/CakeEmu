//c8_00E0();
gml_pragma("forceinline");

for(var i = 0; i < 64*32; ++i) {
    GPU[i] = 0;
}
GPU_REDRAW = true;
