///Core_GameboyCPU();
gml_pragma("forceinline");

var opcode = $00, var err = false;

opcode = ReadByte(PC); PC++; //Fetch
err = false;

switch(opcode) {
    //
    // 0
    //
    case $00: NOP();                    break;
    case $01: LDrrnn_xy(Reg.B, Reg.C);  break;
    case $02: LDrrmA_xy(Reg.B, Reg.C);  break;
    case $03: INCrr_xy(Reg.B, Reg.C);   break;
    case $04: INCr_x(Reg.B);            break;
    case $05: DECr_x(Reg.B);            break;
    case $06: LDrn_x(Reg.B);            break;
    case $07: RLCA();                   break;
    case $08: LDmmSP();                 break;
    case $09: ADDHLrr_xy(Reg.B, Reg.C); break;
    case $0A: LDArrm_xy(Reg.B, Reg.C);  break;
    case $0B: DECrr_xy(Reg.B, Reg.C);   break;
    case $0C: INCr_x(Reg.C);            break;
    case $0D: DECr_x(Reg.C);            break;
    case $0E: LDrn_x(Reg.C);            break;
    case $0F: RRCA();                   break;
    
    //
    // 1
    //
    case $10: DJNZn();                  break;
    case $11: LDrrnn_xy(Reg.D, Reg.E);  break;
    case $12: LDrrmA_xy(Reg.D, Reg.E);  break;
    case $13: INCrr_xy(Reg.D, Reg.E);   break;
    case $14: INCr_x(Reg.D);            break;
    case $15: DECr_x(Reg.D);            break;
    case $16: LDrn_x(Reg.D);            break;
    case $17: RLA();                    break;
    case $18: JRn();                    break;
    case $19: ADDHLrr_xy(Reg.D, Reg.E); break;
    case $1A: LDArrm_xy(Reg.D, Reg.E);  break;
    case $1B: DECrr_xy(Reg.D, Reg.E);   break;
    case $1C: INCr_x(Reg.E);            break;
    case $1D: DECr_x(Reg.E);            break;
    case $1E: LDrn_x(Reg.E);            break;
    case $1F: RRA();                    break;
    
    //
    // 2
    //
    case $20: JRNZn();                  break;
    case $21: LDrrnn_xy(Reg.H, Reg.L);  break;
    case $22:  LDHLIA();                break;
    case $23: INCrr_xy(Reg.H, Reg.L);   break;
    case $24: INCr_x(Reg.H);            break;
    case $25: DECr_x(Reg.H);            break;
    case $26: LDrn_x(Reg.H);            break;
    case $27: DAA();                    break;
    case $28: JRZn();                   break;
    case $29: ADDHLrr_xy(Reg.H, Reg.L); break;    
    case $2A: LDAHLI();                 break;
    case $2B: DECrr_xy(Reg.H, Reg.L);   break;
    case $2C: INCr_x(Reg.L);            break;
    case $2D: DECr_x(Reg.L);            break;
    case $2E: LDrn_x(Reg.L);            break;
    case $2F: CPL();                    break;
    
    //
    // 3
    //
    case $30: JRNCn();       break;
    case $31: LDSPnn();      break;
    case $32: LDHLDA();      break;
    case $33: INCSP();       break;
    case $34: INCHLm();      break;
    case $35: DECHLm();      break;
    case $36: LDHLmn();      break;
    case $37: SCF();         break;
    case $38: JRCn();        break;
    case $39: ADDHLSP();     break;
    case $3A: LDAHLD();      break;
    case $3B: DECSP();       break;
    case $3C: INCr_x(Reg.A); break;
    case $3D: DECr_x(Reg.A); break;
    case $3E: LDrn_x(Reg.A); break;
    case $3F: CCF();         break;
    
    //
    // 4
    //
    case $40: LDrr_xy(Reg.B, Reg.B); break;
    case $41: LDrr_xy(Reg.B, Reg.C); break;
    case $42: LDrr_xy(Reg.B, Reg.D); break;
    case $43: LDrr_xy(Reg.B, Reg.E); break;
    case $44: LDrr_xy(Reg.B, Reg.H); break;
    case $45: LDrr_xy(Reg.B, Reg.L); break;
    case $46: LDrHLm_x(Reg.B);       break;
    case $47: LDrr_xy(Reg.B, Reg.A); break;
    case $48: LDrr_xy(Reg.C, Reg.B); break;
    case $49: LDrr_xy(Reg.C, Reg.C); break;
    case $4A: LDrr_xy(Reg.C, Reg.D); break;
    case $4B: LDrr_xy(Reg.C, Reg.E); break;
    case $4C: LDrr_xy(Reg.C, Reg.H); break;
    case $4D: LDrr_xy(Reg.C, Reg.L); break;
    case $4E: LDrHLm_x(Reg.C);       break;
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
    case $56: LDrHLm_x(Reg.D);       break;
    case $57: LDrr_xy(Reg.D, Reg.A); break;
    case $58: LDrr_xy(Reg.E, Reg.B); break;
    case $59: LDrr_xy(Reg.E, Reg.C); break;
    case $5A: LDrr_xy(Reg.E, Reg.D); break;
    case $5B: LDrr_xy(Reg.E, Reg.E); break;
    case $5C: LDrr_xy(Reg.E, Reg.H); break;
    case $5D: LDrr_xy(Reg.E, Reg.L); break;
    case $5E: LDrHLm_x(Reg.E);       break;
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
    case $66: LDrHLm_x(Reg.H);       break;
    case $67: LDrr_xy(Reg.H, Reg.A); break;
    case $68: LDrr_xy(Reg.L, Reg.B); break;
    case $69: LDrr_xy(Reg.L, Reg.C); break;
    case $6A: LDrr_xy(Reg.L, Reg.D); break;
    case $6B: LDrr_xy(Reg.L, Reg.E); break;
    case $6C: LDrr_xy(Reg.L, Reg.H); break;
    case $6D: LDrr_xy(Reg.L, Reg.L); break;
    case $6E: LDrHLm_x(Reg.L);       break;
    case $6F: LDrr_xy(Reg.L, Reg.A); break;
    
    //
    // 7
    //
    case $70: LDHLmr_x(Reg.B);       break;
    case $71: LDHLmr_x(Reg.C);       break;
    case $72: LDHLmr_x(Reg.D);       break;
    case $73: LDHLmr_x(Reg.E);       break;
    case $74: LDHLmr_x(Reg.H);       break;
    case $75: LDHLmr_x(Reg.L);       break;
    case $76: HALT();                break;
    case $77: LDHLmr_x(Reg.A);       break;
    case $78: LDrr_xy(Reg.A, Reg.B); break;
    case $79: LDrr_xy(Reg.A, Reg.C); break;
    case $7A: LDrr_xy(Reg.A, Reg.D); break;
    case $7B: LDrr_xy(Reg.A, Reg.E); break;
    case $7C: LDrr_xy(Reg.A, Reg.H); break;
    case $7D: LDrr_xy(Reg.A, Reg.L); break;
    case $7E: LDrHLm_x(Reg.A);       break;
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
    case $86: ADDHL();       break;
    case $87: ADDr_x(Reg.A); break;
    case $88: ADCr_x(Reg.B); break;
    case $89: ADCr_x(Reg.C); break;
    case $8A: ADCr_x(Reg.D); break;
    case $8B: ADCr_x(Reg.E); break;
    case $8C: ADCr_x(Reg.H); break;
    case $8D: ADCr_x(Reg.L); break;
    case $8E: ADCHL();       break;
    case $8F: ADCr_x(Reg.A); break;

    //
    // 9
    //
    case $90: SUBr_x(Reg.B); break;
    case $91: SUBr_x(Reg.C); break;
    case $92: SUBr_x(Reg.D); break;
    case $93: SUBr_x(Reg.E); break;
    case $94: SUBr_x(Reg.H); break;
    case $95: SUBr_x(Reg.L); break;
    case $96: SUBHL();       break;
    case $97: SUBr_x(Reg.A); break;
    case $98: SBCr_x(Reg.B); break;
    case $99: SBCr_x(Reg.C); break;
    case $9A: SBCr_x(Reg.D); break;
    case $9B: SBCr_x(Reg.E); break;
    case $9C: SBCr_x(Reg.H); break;
    case $9D: SBCr_x(Reg.L); break;
    case $9E: SBCHL();       break;
    case $9F: SBCr_x(Reg.A); break;
    
    //
    // A
    //
    case $A0: ANDr_x(Reg.B); break;
    case $A1: ANDr_x(Reg.C); break;
    case $A2: ANDr_x(Reg.D); break;
    case $A3: ANDr_x(Reg.E); break;
    case $A4: ANDr_x(Reg.H); break;
    case $A5: ANDr_x(Reg.L); break;
    case $A6: ANDHL();       break;
    case $A7: ANDr_x(Reg.A); break;
    case $A8: XORr_x(Reg.B); break;
    case $A9: XORr_x(Reg.C); break;
    case $AA: XORr_x(Reg.D); break;
    case $AB: XORr_x(Reg.E); break;
    case $AC: XORr_x(Reg.H); break;
    case $AD: XORr_x(Reg.L); break;
    case $AE: XORHL();       break;
    case $AF: XORr_x(Reg.A); break;
    
    //
    // B
    //
    case $B0: ORr_x(Reg.B); break;
    case $B1: ORr_x(Reg.C); break;
    case $B2: ORr_x(Reg.D); break;
    case $B3: ORr_x(Reg.E); break;
    case $B4: ORr_x(Reg.H); break;
    case $B5: ORr_x(Reg.L); break;
    case $B6: ORHL();       break;
    case $B7: ORr_x(Reg.A); break;
    case $B8: CPr_x(Reg.B); break;
    case $B9: CPr_x(Reg.C); break;
    case $BA: CPr_x(Reg.D); break;
    case $BB: CPr_x(Reg.E); break;
    case $BC: CPr_x(Reg.H); break;
    case $BD: CPr_x(Reg.L); break;
    case $BE: CPHL();       break;
    case $BF: CPr_x(Reg.A); break;
    
    //
    // C
    //
    case $C0: RETNZ();               break;
    case $C1: POP_xx(Reg.B, Reg.C);  break;
    case $C2: JPNZnn();              break;
    case $C3: JPnn();                break;
    case $C4: CALLNZnn();            break;
    case $C5: PUSH_xx(Reg.B, Reg.C); break;
    case $C6: ADDn();                break;
    case $C7: RST_x($00);            break;
    case $C8: RETZ();                break;
    case $C9: RET();                 break;
    case $CA: JPZnn();               break;
    case $CB: CBPREFIX();            break; //TO-DO, CB-PREFIX codes. UGH.
    case $CC: CALLZnn();             break;
    case $CD: CALLnn();              break;
    case $CE: ADCn();                break;
    case $CF: RST_x($8);             break;
    
    //
    // D
    //
    case $D0: RETNC();               break;
    case $D1: POP_xx(Reg.D, Reg.E);  break;
    case $D2: JPNCnn();              break;
    case $D3: err = XX();            break;
    case $D4: CALLNCnn();            break;
    case $D5: PUSH_xx(Reg.D, Reg.E); break;
    case $D6: SUBn();                break;
    case $D7: RST_x($10);            break;
    case $D8: RETC();                break;
    case $D9: RETI();                break;
    case $DA: JPCnn();               break;
    case $DB: err = XX();            break;
    case $DC: CALLCnn();             break;
    case $DD: err = XX();            break;
    case $DE: SBCn();                break;
    case $DF: RST_x($18);            break;
    
    //
    // E
    //
    case $E0: LDIOnA(); break;
    case $E1: POP_xx(Reg.H, Reg.L); break;
    case $E2: LDIOCA(); break;
    case $E3: err = XX(); break;
    case $E4: err = XX(); break;
    case $E5: PUSH_xx(Reg.H, Reg.L); break;
    case $E6: ANDn(); break;
    case $E7: RST_x($20); break;
    
    
    
    case $EB: err = XX(); break;
    case $EC: err = XX(); break;
    case $ED: err = XX(); break;
    case $EE: XORn(); break;
    case $EF: RST_x($28); break;
    
    //
    // F
    //
    
    case $F1: POP_xx(Reg.A, Reg.F); break;
    
    
    case $F4: err = XX(); break;
    case $F5: PUSH_xx(Reg.A, Reg.F); break;
    
    case $F7: RST_x($30); break;
    
    case $F9: err = XX(); break;
    
    
    case $FC: err = XX(); break;
    case $FD: err = XX(); break;
    
    case $FF: RST_x($38); break;

    
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
