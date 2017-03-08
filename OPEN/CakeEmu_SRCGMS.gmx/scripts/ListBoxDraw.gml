///ListBoxDraw(listbox, x, y, width, height);
state = argument0[| 1];
title = argument0[| 0];
w     = 8 + string_width(title) + 8;
h     = argument4;
bxw   = argument0[| 2];
var nothing = argument3;

mx = window_mouse_get_x();
my = window_mouse_get_y();
if(point_in_rectangle(mx, my, argument1, argument2, argument1+w, argument2+h) || 
    (state == 2) && point_in_rectangle(mx, my, argument1, argument2+h, argument1+bxw, argument0[| 3])) {
    
    if(state != 2) {
        state = 1;
    }
    if(mouse_check_button_pressed(mb_left)) {
        state = 2;
    }
}else{
    state = 0;
}
argument0[| 1] = state;
argument0[| 4] = -1;


rtn = ds_list_create();

if(state == 0) {
    draw_set_colour(c_white);
    draw_rectangle(argument1, argument2, argument1+w, argument2+h, false);
}else
if(state == 1) {
    draw_set_colour(make_colour_rgb(229, 243, 255));
    draw_rectangle(argument1, argument2, argument1+w, argument2+h, false);
    draw_set_colour(make_colour_rgb(204, 232, 255));
    draw_rectangle(argument1, argument2, argument1+w, argument2+h, true);
}else
if(state == 2) {
    draw_set_colour(make_colour_rgb(204, 232, 255));
    draw_rectangle(argument1, argument2, argument1+w, argument2+h, false);
    draw_set_colour(make_colour_rgb(153, 209, 255));
    draw_rectangle(argument1, argument2, argument1+w, argument2+h, true);
    
    draw_set_colour(c_black);
    draw_set_alpha(0.25);
        draw_rectangle(argument1+5, (argument2+h)+5, (argument1+bxw)+2, argument0[| 3]+2, false);
    draw_set_alpha(0.15);
        draw_rectangle(argument1+4, (argument2+h)+4, (argument1+bxw)+3, argument0[| 3]+3, false);
    draw_set_alpha(0.05);
        draw_rectangle(argument1+3, (argument2+h)+3, (argument1+bxw)+4, argument0[| 3]+4, false);
    draw_set_alpha(1.0);
    
    draw_set_colour(make_colour_rgb(242, 242, 242));
    draw_rectangle(argument1, argument2+h, argument1+bxw, argument0[| 3], false);
    draw_set_colour(make_colour_rgb(204, 204, 204));
    draw_rectangle(argument1, argument2+h, argument1+bxw, argument0[| 3], true);
    
    
    draw_set_colour(c_black);    
    var offs =   (argument2+h)+3;
    var lnbreaks = 0;
    for(var i = 5; i < ds_list_size(argument0); i+=5) {
        var typ  = argument0[| i + 0];
        var str  = argument0[| i + 1];
        var dat1 = argument0[| i + 2];
        var dat2 = argument0[| i + 3];
        var dat3 = argument0[| i + 4];

        if(typ == ListMenuType.Default) {
            if(point_in_rectangle(mx, my, argument1+3, offs, (argument1+bxw)-3, (offs+22))) {
                draw_set_colour(make_colour_rgb(145, 201, 247));                    
                draw_rectangle(argument1+3, offs, (argument1+bxw)-3, (offs+22), false);
                
                if(mouse_check_button_pressed(mb_left)) {
                    argument0[| 4] = ((i-5) / 5) - lnbreaks;
                    rtn[| 0] =  argument2 + offs;
                    rtn[| 1] = (argument2 + offs) + 32;
                    rtn[| 2] =  argument0[| 4];
                }                    
            } 
            
            draw_set_colour(c_black);
            draw_text(argument1+32, offs+4, str);
            offs += 22;                       
        }else
        if(typ == ListMenuType.Checkbox) {
            if(point_in_rectangle(mx, my, argument1+3, offs, (argument1+bxw)-3, (offs+22))) {
                draw_set_colour(make_colour_rgb(145, 201, 247));                   
                draw_rectangle(argument1+3, offs, (argument1+bxw)-3, (offs+22), false);
                
                if(mouse_check_button_pressed(mb_left)) {
                    argument0[| 4] = ((i-5) / 5) - lnbreaks;
                    rtn[| 0] =  argument2 + offs;
                    rtn[| 1] = (argument2 + offs) + 32;
                    rtn[| 2] =  argument0[| 4];
                    rtn[| 3] = !dat3;
                    argument0[| i + 4] = rtn[| 3];
                }
                draw_sprite(spr_listcheck, dat3*2, argument1+3, offs);                  
            }else{
                draw_sprite(spr_listcheck, dat3  , argument1+3, offs);
            }
            
            draw_set_colour(c_black); 
            draw_text(argument1+32, offs+4, str);
            offs += 22;
        }
        if(typ == ListMenuType.Break) {
            offs+=6;
            draw_set_colour(make_colour_rgb(215, 215, 215));
            draw_line(argument1+26, argument2+offs, (argument1+bxw)-26, argument2+offs);
            
            offs+=6;
            
            lnbreaks++;        
        }
    }
    argument0[| 3] = offs+3;
}
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(argument1+(w/2), argument2+(h/2), title);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(argument0[| 4] == -1) {
    ds_list_destroy(rtn);
    return -1;
}else{
    return rtn;
}
