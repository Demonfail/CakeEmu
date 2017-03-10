///Core_GameboyInit();
gml_pragma("forceinline");

CoreGBDebug = true;
if(CoreGBDebug == true) { //Only used if 
    MNLIST = array_create(256);
    for(var i = 0; i < 256; ++i) {
        MNLIST[i] = "UNKNOWN";
    }
    MNLIST[$00] = "NOP";
    MNLIST[$01] = "LD BC, NN";
    MNLIST[$02] = "LD (BC), A";
    MNLIST[$03] = "INC BC";
    MNLIST[$04] = "INC B";
    MNLIST[$05] = "DEC B";
    MNLIST[$06] = "LD B, N";
    MNLIST[$07] = "RLCA"
    MNLIST[$08] = "LD NN, SP";
    MNLIST[$09] = "ADD HL, BC";
    MNLIST[$0A] = "LD A, (BC)";
}
opcode = $00;
err    = false;

//
// 8-Bit Registers
//
enum FMask {
    Z = (1 << 7), //Zero Flag
    N = (1 << 6), //Subtraction Flag
    H = (1 << 5), //Half Carry Flag
    C = (1 << 4), //Carry Flag
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
