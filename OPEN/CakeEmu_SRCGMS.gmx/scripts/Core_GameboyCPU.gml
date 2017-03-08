///Core_GameboyCPU();
gml_pragma("forceinline");

var opcode = $00, var err = false;

opcode = ReadByte(PC); PC++; //Fetch
err = false;

//http://imrannazar.com/Gameboy-Z80-Opcode-Map
//http://imrannazar.com/content/files/jsgb.z80.js
//https://github.com/Two9A/jsGB/blob/master/js/z80.js

switch(opcode) {
    //
    // 0
    //
    case $00: NOP(); break;
    case $01: LDrrnn_xy(Reg.B, Reg.C); break;
    case $02: LDrrmA_xy(Reg.B, Reg.C); break;
    case $03: INCrr_xy(Reg.B, Reg.C); break;
    case $04: INCr_x(Reg.B); break;
    case $05: DECr_x(Reg.B); break;
    case $06: LDrn_x(Reg.B); break;
    case $07: RLCA(); break;
    case $08: LDmmSP(); break;
    case $09: ADDHLrr_xy(Reg.B, Reg.C); break;
    case $0A: LDArrm_xy(Reg.B, Reg.C); break;
    case $0B: DECrr_xy(Reg.B, Reg.C); break;
    case $0C: INCr_x(Reg.C); break;
    case $0D: DECr_x(Reg.C); break;
    case $0E: LDrn_x(Reg.C); break;
    case $0F: RRCA(); break;
    
    //
    // 1
    //
    case $10: DJNZn(); break;
    case $11: LDrrnn_xy(Reg.D, Reg.E); break;
    case $22: LDrrmA_xy(Reg.D, Reg.E); break;
    case $13: INCrr_xy(Reg.D, Reg.E); break;
    case $14: INCr_x(Reg.D); break;
    case $15: DECr_x(Reg.D); break;
    case $16: LDrn_x(Reg.D); break;
    case $17: RLA(); break;
    case $18: JRn(); break;
    case $19: ADDHLrr_xy(Reg.D, Reg.E); break;
    case $1A: LDArrm_xy(Reg.D, Reg.E); break;
    case $1B: DECrr_xy(Reg.D, Reg.E); break;
    case $1C: INCr_x(Reg.E); break;
    case $1D: DECr_x(Reg.E); break;
    case $1E: LDrn_x(Reg.E); break;
    case $1F: RRA(); break;
    
    //
    // 2
    //
    case $20: break;
    case $21: LDrrnn_xy(Reg.H, Reg.L); break;
    case $22: break;
    case $23: INCrr_xy(Reg.H, Reg.L); break;
    case $24: INCr_x(Reg.H); break;
    case $25: DECr_x(Reg.H); break;
    case $26: LDrn_x(Reg.H); break;
    case $27: DAA(); break;
    case $28: break;
    case $29: ADDHLrr_xy(Reg.H, Reg.L); break;    
    case $2A: LDAHLI(); break;
    case $2B: DECrr_xy(Reg.H, Reg.L); break;
    case $2C: INCr_x(Reg.L); break;
    case $2D: DECr_x(Reg.L); break;
    case $2E: LDrn_x(Reg.L); break;
    case $2F: CPL(); break;
    
    //
    // 3
    //
    case $33: INCSP(); break;
    case $3C: INCr_x(Reg.A); break;
    
    //
    // 4
    //
    case $40: LDrr_xy(Reg.B, Reg.B); break;
    case $41: LDrr_xy(Reg.B, Reg.C); break;
    case $42: LDrr_xy(Reg.B, Reg.D); break;
    case $43: LDrr_xy(Reg.B, Reg.E); break;
    case $44: LDrr_xy(Reg.B, Reg.H); break;
    case $45: LDrr_xy(Reg.B, Reg.L); break;
    case $46: LDrHLm_x(Reg.B); break;
    case $47: LDrr_xy(Reg.B, Reg.A); break;
    case $48: LDrr_xy(Reg.C, Reg.B); break;
    case $49: LDrr_xy(Reg.C, Reg.C); break;
    case $4A: LDrr_xy(Reg.C, Reg.D); break;
    case $4B: LDrr_xy(Reg.C, Reg.E); break;
    case $4C: LDrr_xy(Reg.C, Reg.H); break;
    case $4D: LDrr_xy(Reg.C, Reg.L); break;
    case $4E: LDrHLm_x(Reg.C); break;
    case $4F: LDrr_xy(Reg.C, Reg.A); break;
    
    
    //
    // 5
    //
    case $50: LDrr_xy(Reg.D, Reg.B); break;
    case $51: LDrr_xy(Reg.D, Reg.C); break;
    case $52: LDrr_xy(Reg.D, Reg.D); break;
    case $53: LDrr_xy(Reg.D, Reg.E); break;
    case $54: LDrr_xy(Reg.D, Reg.H); break;
    case $55: LDrr_xy(Reg.D, Reg.L); break;
    case $56: LDrHLm_x(Reg.D); break;
    case $57: LDrr_xy(Reg.D, Reg.A); break;
    case $58: LDrr_xy(Reg.E, Reg.B); break;
    case $59: LDrr_xy(Reg.E, Reg.C); break;
    case $5A: LDrr_xy(Reg.E, Reg.D); break;
    case $5B: LDrr_xy(Reg.E, Reg.E); break;
    case $5C: LDrr_xy(Reg.E, Reg.H); break;
    case $5D: LDrr_xy(Reg.E, Reg.L); break;
    case $5E: LDrHLm_x(Reg.E); break;
    case $5F: LDrr_xy(Reg.E, Reg.A); break;

    //
    // 6
    // 
    case $60: LDrr_xy(Reg.H, Reg.B); break;
    case $61: LDrr_xy(Reg.H, Reg.C); break;
    case $62: LDrr_xy(Reg.H, Reg.D); break;
    case $63: LDrr_xy(Reg.H, Reg.E); break;
    case $64: LDrr_xy(Reg.H, Reg.H); break;
    case $65: LDrr_xy(Reg.H, Reg.L); break;
    case $66: LDrHLm_x(Reg.H); break;
    case $67: LDrr_xy(Reg.H, Reg.A); break;
    case $68: LDrr_xy(Reg.L, Reg.B); break;
    case $69: LDrr_xy(Reg.L, Reg.C); break;
    case $6A: LDrr_xy(Reg.L, Reg.D); break;
    case $6B: LDrr_xy(Reg.L, Reg.E); break;
    case $6C: LDrr_xy(Reg.L, Reg.H); break;
    case $6D: LDrr_xy(Reg.L, Reg.L); break;
    case $6E: LDrHLm_x(Reg.L); break;
    case $6F: LDrr_xy(Reg.L, Reg.A); break;
    
    //
    // 7
    //
    case $70: LDHLmr_x(Reg.B); break;
    case $71: LDHLmr_x(Reg.C); break;
    case $72: LDHLmr_x(Reg.D); break;
    case $73: LDHLmr_x(Reg.E); break;
    case $74: LDHLmr_x(Reg.H); break;
    case $75: LDHLmr_x(Reg.L); break;
    case $76: HALT(); break;
    case $77: LDHLmr_x(Reg.A); break;
    case $78: LDrr_xy(Reg.A, Reg.B); break;
    case $79: LDrr_xy(Reg.A, Reg.C); break;
    case $7A: LDrr_xy(Reg.A, Reg.D); break;
    case $7B: LDrr_xy(Reg.A, Reg.E); break;
    case $7C: LDrr_xy(Reg.A, Reg.H); break;
    case $7D: LDrr_xy(Reg.A, Reg.L); break;
    case $7E: LDrHLm_x(Reg.A); break;
    case $7F: LDrr_xy(Reg.A, Reg.A); break;

    //
    // 8
    //
    case $80: ADDr_x(Reg.B); break;
    case $81: ADDr_x(Reg.C); break;
    case $82: ADDr_x(Reg.D); break;
    case $83: ADDr_x(Reg.E); break;
    case $84: ADDr_x(Reg.H); break;
    case $85: ADDr_x(Reg.L); break;
    case $86: ADDHL(); break;
    case $87: ADDr_x(Reg.A); break;
    case $88: ADCr_x(Reg.B); break;
    case $89: ADCr_x(Reg.C); break;
    case $8A: ADCr_x(Reg.D); break;
    case $8B: ADCr_x(Reg.E); break;
    case $8C: ADCr_x(Reg.H); break;
    case $8D: ADCr_x(Reg.L); break;
    case $8E: ADCHL(); break;
    case $8F: ADCr_x(Reg.A); break;

    //
    // 9
    //
    
    //
    // A
    //
    
    //
    // B
    //
    
    //
    // C
    //
    case $C1: POP_xx(Reg.B, Reg.C); break;
    case $C5: PUSH_xx(Reg.B, Reg.C); break;
    
    //
    // D
    //
    case $D1: POP_xx(Reg.D, Reg.E); break;
    case $D3: err = XX(); break;
    case $D5: PUSH_xx(Reg.D, Reg.E); break;
    case $DB: err = XX(); break;
    case $DD: err = XX(); break;

    //
    // E
    //
    case $E1: POP_xx(Reg.H, Reg.L); break;
    case $E3: err = XX(); break;
    case $E5: PUSH_xx(Reg.H, Reg.L); break;
    case $E4: err = XX(); break;
    case $EB: err = XX(); break;
    case $EC: err = XX(); break;
    case $ED: err = XX(); break;
        
    //
    // F
    //
    case $F1: POP_xx(Reg.A, Reg.F); break;
    case $F4: err = XX(); break;
    case $F5: PUSH_xx(Reg.A, Reg.F); break;
    case $F9: err = XX(); break;
    case $FC: err = XX(); break;
    case $FD: err = XX(); break;

    
    //
    // NOT IMPLEMENTED.
    //    
    default: err = true; break;
}

if(err == true) {
    show_debug_message("Unimplemented OPCode: " + dec_to_hex(opcode));
    room_goto(rm_window);
}
PC &= 65535; //Mask PC to FFFF.

CM += REG[Reg.M]; //Add time to CPU clocks.
CT += REG[Reg.T];
