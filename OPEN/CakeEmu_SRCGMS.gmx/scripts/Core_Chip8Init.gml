/**
 * NOTES:
 * Memory below $200 is used for system stuff, like the font.
 *
 */
gml_pragma("forceinline");
randomize();

RAM   = buffer_create(4096 , buffer_fixed, 1);
GPU   = -1;
GPU_REDRAW = false;
GPU_SURFACE = surface_create(64, 32);

for(var i = 0; i < 64*32; ++i) {
    GPU[i] = 0;
}
DTIMER = 0;
STIMER = 0;
REG = -1;
STK = -1;
KEY = -1;
I   = 0;
PC  = $200;
SP  = 0;
for(var i = 0; i <= 15; ++i) { 
    REG[i] = 0; 
    STK[i] = 0; 
    KEY[i] = 0; 
}

//We loadthe ROM, then write it into the Chip8's memory.
ROM   = buffer_load(global.GAMEPATH);
    buffer_copy(ROM, 0, buffer_get_size(ROM), RAM, $200);
buffer_delete(ROM);

//We load the font, then write it to RAM.
FNT = buffer_load(working_directory+"COM\FNT\chip8_stnd.font");
    var fntsize = buffer_get_size(FNT);
    buffer_copy(FNT, 0, buffer_get_size(FNT), RAM, $00);
buffer_delete(FNT);

//Finally, load the bios after the font.
BIN = buffer_load(working_directory+"COM\BIOS\chip8-1_1_EU.BIOS");
    buffer_copy(BIN, 0, buffer_get_size(BIN), RAM, fntsize);
    show_debug_message(buffer_get_size(BIN) + $50);
buffer_delete(BIN);

PC = fntsize;

KEYMAP[$0] = ord("0"); KEYMAP[$1] = ord("1"); KEYMAP[$2] = ord("2"); KEYMAP[$3] = ord("3");
KEYMAP[$4] = ord("Q"); KEYMAP[$5] = ord("W"); KEYMAP[$6] = ord("E"); KEYMAP[$7] = ord("R");
KEYMAP[$8] = ord("A"); KEYMAP[$9] = ord("S"); KEYMAP[$A] = ord("D"); KEYMAP[$B] = ord("F");
KEYMAP[$C] = ord("Z"); KEYMAP[$D] = ord("X"); KEYMAP[$E] = ord("C"); KEYMAP[$F] = ord("V");
