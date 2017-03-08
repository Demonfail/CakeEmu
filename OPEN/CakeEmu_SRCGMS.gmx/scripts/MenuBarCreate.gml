global.lb_file = ListBoxCreate("File");
    ListBoxAddItem(global.lb_file, ListMenuType.Default, "Open Game...");
    
global.lb_core = ListBoxCreate("Core");
    ListBoxAddItem(global.lb_core, ListMenuType.Checkbox, "None",    global.CORE_NULL);
    ListBoxAddItem(global.lb_core, ListMenuType.Checkbox, "Chip 8",  global.CORE_CHIP8);
    ListBoxAddItem(global.lb_core, ListMenuType.Checkbox, "Chip 48", global.CORE_CHIP48);
    ListBoxAddItem(global.lb_core, ListMenuType.Checkbox, "Gameboy", global.CORE_GAMEBOY);

global.lb_shad = ListBoxCreate("Shaders");
    ListBoxAddItem(global.lb_shad, ListMenuType.Checkbox, "HQX2",   global.HQX2);
global.wx = 0;
