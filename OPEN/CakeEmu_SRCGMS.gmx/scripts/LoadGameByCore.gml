switch(global.CORE) {
    case Cores.NULL:
        show_message_async("Set a core to emulate games.");
    break;
    
    case Cores.CHIP8:
        global.GAMEPATH = get_open_filename("", ""); //ROM File (*.c8)|*.c8
        if(global.GAMEPATH == "") {
            exit;
        }
        room_instance_clear(rm_emu);
        room_instance_add(rm_emu, 0, 0, CORE_chip8);
    break;
    
    case Cores.CHIP48:
        global.GAMEPATH = get_open_filename("", ""); //ROM File (*.sc8)|*.sc8
        if(global.GAMEPATH == "") {
            exit;
        }
        room_instance_clear(rm_emu);
        room_instance_add(rm_emu, 0, 0, CORE_chip48); 
    break;
    
    case Cores.GAMEBOY:
        global.GAMEPATH = get_open_filename("", ""); //ROM File (*.gb)|*.gb
        if(global.GAMEPATH == "") {
            exit;
        }
        room_instance_clear(rm_emu);
        room_instance_add(rm_emu, 0, 0, CORE_gameboy);     
    break; 
}

if(global.CORE != Cores.NULL) {
    room_goto(rm_emu);
}
