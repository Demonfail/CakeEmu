draw_set_font(fnt_windows);
draw_set_colour(c_black);
chk = ListBoxDraw(global.lb_file, global.wx, 0, -1, 16);
if(chk != -1) {
    switch(chk[| 2]) {
        case 0:
        LoadGameByCore();
        break;
    }
    ds_list_destroy(chk);
    ListBoxSet(global.lb_file, 1, 0); 
}
global.wx += string_width("File") + 16;
