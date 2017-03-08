draw_set_font(fnt_windows);
draw_set_colour(c_black);
chk = ListBoxDraw(global.lb_core, global.wx, 0, -1, 16);
if(chk != -1) {
    global.CORE = chk[| 2];
    switch(chk[| 2]) {
        case 0:
            ListBoxClearCheckState(global.lb_core, 0, 3);
            ListBoxSetCheckState(global.lb_core, 0, true);
        break;
        
        case 1:
            ListBoxClearCheckState(global.lb_core, 0, 3);
            ListBoxSetCheckState(global.lb_core, 1, true);
        break;
        
        case 2:
            ListBoxClearCheckState(global.lb_core, 0, 3);
            ListBoxSetCheckState(global.lb_core, 2, true);
        break;
        
        case 3:
            ListBoxClearCheckState(global.lb_core, 0, 3);
            ListBoxSetCheckState(global.lb_core, 3, true);
        break;
    }
    ds_list_destroy(chk);
    ListBoxSet(global.lb_core, 1, 0); 
}
global.wx += string_width("Core") + 16;
