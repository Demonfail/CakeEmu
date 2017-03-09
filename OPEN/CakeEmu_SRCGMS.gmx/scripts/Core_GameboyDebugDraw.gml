var str = "";

str += "In Bios: " + string(INBIOS) + "#";
str += "PC: 0x" + dec_to_hex(PC) + "#";
str += "SP: 0x" + dec_to_hex(SP) + "#";
str += "REG.A: 0x" + dec_to_hex(REG[Reg.A]) + "#";
str += "REG.B: 0x" + dec_to_hex(REG[Reg.B]) + "#";
str += "REG.C: 0x" + dec_to_hex(REG[Reg.C]) + "#";
str += "REG.D: 0x" + dec_to_hex(REG[Reg.D]) + "#";
str += "REG.E: 0x" + dec_to_hex(REG[Reg.E]) + "#";
str += "REG.H: 0x" + dec_to_hex(REG[Reg.H]) + "#";
str += "REG.L: 0x" + dec_to_hex(REG[Reg.L]) + "#";
str += "CLOCK: M["+string(CM)+"], T["+string(CT)+"]" + "#";
str += "Frames: "+string(fps_real);

draw_text(2, 2, str);
