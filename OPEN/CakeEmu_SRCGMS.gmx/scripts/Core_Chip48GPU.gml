///Core_Chip48GPU();
gml_pragma("forceinline");
if(!surface_exists(GPU_SURFACE)) { GPU_SURFACE = surface_create(128, 64); 
                                  GPU_REDRAW = true; }

if(!GPU_REDRAW) {
   return null;
}

surface_set_target(GPU_SURFACE);
if(EXMODE == true) {
    for(var i = 0; i < 128*64; ++i) {
        var xx = (i % 128);
        var yy = floor(i / 128);
        
        draw_point_colour(xx, yy, c_white*GPU[i]);
    }
}else{
    for(var i = 0; i <  128*64; ++i) {
        var xx = (i % 128);
        var yy = floor(i / 128);
        
        draw_set_colour(c_white*GPU[i]);
            draw_rectangle((2*xx), (2*yy), (2*xx)+1, (2*yy)+1, false); //We draw pixels as a 2X2 area, to cover the 128x64 surface in non-ex mode. A little hacky.
        draw_set_colour(c_black);
    }
}
surface_reset_target();

GPU_REDRAW = false;
