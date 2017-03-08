///Core_Chip8GPU();
gml_pragma("forceinline");
if(!surface_exists(GPU_SURFACE)) { GPU_SURFACE = surface_create(64, 32); 
                                  GPU_REDRAW = true; }

if(!GPU_REDRAW) {
   return null;
}

surface_set_target(GPU_SURFACE);
for(var i = 0; i < 64*32; ++i) {
    var xx = (i % 64);
    var yy = floor(i / 64);
    
    draw_point_colour(xx, yy, c_white*GPU[i]);
}
surface_reset_target();

GPU_REDRAW = false;
