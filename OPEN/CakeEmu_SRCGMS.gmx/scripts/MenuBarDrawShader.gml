draw_set_font(fnt_windows);
draw_set_colour(c_black);
chk = ListBoxDraw(global.lb_shad, global.wx, 0, -1, 16);
if(chk != -1) {
    switch(chk[| 2]) {
        case 0:        
            global.HQX2 = !global.HQX2;
            ListBoxSetCheckState(global.lb_shad, 0, global.HQX2);
        break;

    }
    ds_list_destroy(chk);
    ListBoxSet(global.lb_shad, 1, 0); 
}
global.wx += string_width("Shaders") + 16;
