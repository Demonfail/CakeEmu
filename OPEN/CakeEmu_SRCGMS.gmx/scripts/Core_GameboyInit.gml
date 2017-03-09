///Core_GameboyInit();
gml_pragma("forceinline");

//
// 8-Bit Registers
//
enum FMask {
    Z = $80, //Zero Flag
    N = $40, //Subtraction Flag
    H = $20, //Half Carry Flag
    C = $10, //Carry Flag
};
enum Reg {
    A,
    F,
    B,
    C,
    D,
    E,
    H,
    L,
    
    M, //Clock Registers.
    T
};
 REG = array_create(10);
SREG = array_create(8);
//
//16-Bit Pointers
//
PC = 0; //Program Counter
SP = 0; //Stack Pointer

//
// States.
//
bHalt = false;
bStop = false;
IME = false;

//
//Clocks
//
CM = 0; //Operation Clocks
CT = 0;

//
// Memory
//
INBIOS = true;
BIOS = array_create($FF);
ROM  = array_create($8000);
ERAM = array_create($2000);
WRAM = array_create($2000);
ZRAM = array_create($80);

//
//GPU
//
VRAM = array_create($2000);
OAM  = array_create(160);

//Load the bios
Core_GameboyLoadBios(working_directory+"COM\BIOS\GB_1.0.BIOS");
Core_GameboyLoadRom(global.GAMEPATH);
