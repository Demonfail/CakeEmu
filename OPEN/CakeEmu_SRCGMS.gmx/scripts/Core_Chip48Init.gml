///Core_Chip48Init();
gml_pragma("forceinline");
randomize();

RAM   = buffer_create(4096 , buffer_fixed, 1);
GPU   = -1;
GPU_REDRAW = false;
GPU_SURFACE = surface_create(128, 64);

EXMODE = false;

for(var i = 0; i < 128*64; ++i) {
    GPU[i] = 0;
}
DTIMER = 0;
STIMER = 0;
REG = -1;
STK = -1;
KEY = -1;
RPL = -1;

I   = 0;
PC  = $200;
SP  = 0;
for(var i = 0; i <= 15; ++i) { 
    REG[i] = 0; 
    STK[i] = 0; 
    KEY[i] = 0; 
    RPL[i] = 0;
}

//We loadthe ROM, then write it into the Chip8's memory.
ROM   = buffer_load(global.GAMEPATH);
    buffer_copy(ROM, 0, buffer_get_size(ROM), RAM, $200);
buffer_delete(ROM);

//We load the font, then write it to RAM.
FNT = buffer_load(working_directory+"COM\FNT\chip8_stnd.font");
    buffer_copy(FNT, 0, buffer_get_size(FNT), RAM, $50);
buffer_delete(FNT);

KEYMAP[$0] = ord("0"); KEYMAP[$1] = ord("1"); KEYMAP[$2] = ord("2"); KEYMAP[$3] = ord("3");
KEYMAP[$4] = ord("Q"); KEYMAP[$5] = ord("W"); KEYMAP[$6] = ord("E"); KEYMAP[$7] = ord("R");
KEYMAP[$8] = ord("A"); KEYMAP[$9] = ord("S"); KEYMAP[$A] = ord("D"); KEYMAP[$B] = ord("F");
KEYMAP[$C] = ord("Z"); KEYMAP[$D] = ord("X"); KEYMAP[$E] = ord("C"); KEYMAP[$F] = ord("V");
