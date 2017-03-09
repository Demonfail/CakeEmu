///CBPREFIX();

opcode = ReadByte(PC); PC++; //Fetch

switch(opcode) {    
    case $00: RLCx(Reg.B); break;
    case $01: RLCx(Reg.C); break;
    case $02: RLCx(Reg.D); break;
    case $03: RLCx(Reg.E); break;
    case $04: RLCx(Reg.H); break;
    case $05: RLCx(Reg.L); break;
    case $06: RLCHL();     break;
    case $07: RLCx(Reg.A); break;
    case $08: RRCx(Reg.B); break;
    case $09: RRCx(Reg.C); break;
    case $0A: RRCx(Reg.D); break;
    case $0B: RRCx(Reg.E); break;
    case $0C: RRCx(Reg.H); break;
    case $0D: RRCx(Reg.L); break;
    case $0E: RRCHL();     break;
    case $0F: RRCx(Reg.A); break;

    //
    // 1
    //
    case $10: RLx(Reg.B); break;
    case $11: RLx(Reg.C); break;
    case $12: RLx(Reg.D); break;
    case $13: RLx(Reg.E); break;
    case $14: RLx(Reg.H); break;
    case $15: RLx(Reg.L); break;
    case $16: RLHL();     break;
    case $17: RLx(Reg.A); break;
    
    case $18: RRx(Reg.B); break;
    case $19: RRx(Reg.C); break;
    case $1A: RRx(Reg.D); break;
    case $1B: RRx(Reg.E); break;
    case $1C: RRx(Reg.H); break;
    case $1D: RRx(Reg.L); break;
    case $1E: RRHL();     break;
    case $1F: RRx(Reg.A); break;
    
    //
    // 2
    //
    case $20: SLAx(Reg.B); break
    case $21: SLAx(Reg.C); break;
    case $22: SLAx(Reg.D); break;
    case $23: SLAx(Reg.E); break;
    case $24: SLAx(Reg.H); break;
    case $25: SLAx(Reg.L); break;
    case $26: err = XX();  break;
    case $27: SLAx(Reg.A); break;
    
    case $28: SRAx(Reg.B); break;
    case $29: SRAx(Reg.C); break;
    case $2A: SRAx(Reg.D); break;
    case $2B: SRAx(Reg.E); break;
    case $2C: SRAx(Reg.H); break;
    case $2D: SRAx(Reg.L); break;
    case $2E: err = XX();  break;
    case $2F: SRAx(Reg.A); break;
    
    //
    // 3
    //
    case $30: SWAPx(Reg.B); break;
    case $31: SWAPx(Reg.C); break;
    case $32: SWAPx(Reg.D); break;
    case $33: SWAPx(Reg.E); break;
    case $34: SWAPx(Reg.H); break;
    case $35: SWAPx(Reg.L); break;
    case $36: err = XX();   break;
    case $37: SWAPx(Reg.A); break;
    
    case $38: SRLx(Reg.B);  break;
    case $39: SRLx(Reg.C);  break;
    case $3A: SRLx(Reg.D);  break;
    case $3B: SRLx(Reg.E);  break;
    case $3C: SRLx(Reg.H);  break;
    case $3D: SRLx(Reg.L);  break;
    case $3E: err = XX();   break;
    case $3F: SRLx(Reg.A);  break;
    
    //
    // 4
    //
    case $40: BITx(Reg.B, $01); break;
    case $41: BITx(Reg.C, $01); break;
    case $42: BITx(Reg.D, $01); break;
    case $43: BITx(Reg.E, $01); break;
    case $44: BITx(Reg.H, $01); break;
    case $45: BITx(Reg.L, $01); break;
    case $46: BITm($01);        break;
    case $47: BITx(Reg.A, $01); break;
    
    case $48: BITx(Reg.B, $02); break;
    case $49: BITx(Reg.C, $02); break;
    case $4A: BITx(Reg.D, $02); break;
    case $4B: BITx(Reg.E, $02); break;
    case $4C: BITx(Reg.H, $02); break;
    case $4D: BITx(Reg.L, $02); break;
    case $4E: BITm($02);        break;
    case $4F: BITx(Reg.A, $02); break;
    
    //
    // 5
    //
    case $50: BITx(Reg.B, $04); break;
    case $51: BITx(Reg.C, $04); break;
    case $52: BITx(Reg.D, $04); break;
    case $53: BITx(Reg.E, $04); break;
    case $54: BITx(Reg.H, $04); break;
    case $55: BITx(Reg.L, $04); break;
    case $56: BITm($04);        break;
    case $57: BITx(Reg.A, $04); break;
    
    case $58: BITx(Reg.B, $08); break;
    case $59: BITx(Reg.C, $08); break;
    case $5A: BITx(Reg.D, $08); break;
    case $5B: BITx(Reg.E, $08); break;
    case $5C: BITx(Reg.H, $08); break;
    case $5D: BITx(Reg.L, $08); break;
    case $5E: BITm($08);        break;
    case $5F: BITx(Reg.A, $08); break;
    
    //
    // 6
    //
    case $60: BITx(Reg.B, $10); break;
    case $61: BITx(Reg.C, $10); break;
    case $62: BITx(Reg.D, $10); break;
    case $63: BITx(Reg.E, $10); break;
    case $64: BITx(Reg.H, $10); break;
    case $65: BITx(Reg.L, $10); break;
    case $66: BITm($10);        break;
    case $67: BITx(Reg.A, $10); break;
    
    case $68: BITx(Reg.B, $20); break;
    case $69: BITx(Reg.C, $20); break;
    case $6A: BITx(Reg.D, $20); break;
    case $6B: BITx(Reg.E, $20); break;
    case $6C: BITx(Reg.H, $20); break;
    case $6D: BITx(Reg.L, $20); break;
    case $6E: BITm($20);        break;
    case $6F: BITx(Reg.A, $20); break;
    
    //
    // 7
    //
    case $70: BITx(Reg.B, $40); break;
    case $71: BITx(Reg.C, $40); break;
    case $72: BITx(Reg.D, $40); break;
    case $73: BITx(Reg.E, $40); break;
    case $74: BITx(Reg.H, $40); break;
    case $75: BITx(Reg.L, $40); break;
    case $76: BITm($40);        break;
    case $77: BITx(Reg.A, $40); break;
    
    case $78: BITx(Reg.B, $80); break;
    case $79: BITx(Reg.C, $80); break;
    case $7A: BITx(Reg.D, $80); break;
    case $7B: BITx(Reg.E, $80); break;
    case $7C: BITx(Reg.H, $80); break;
    case $7D: BITx(Reg.L, $80); break;
    case $7E: BITm($80);        break;
    case $7F: BITx(Reg.A, $80); break;
    
    //
    // 8
    //
    case $80: RESx(Reg.B, $01); break;
    case $81: RESx(Reg.C, $01); break;
    case $82: RESx(Reg.D, $01); break;
    case $83: RESx(Reg.E, $01); break;
    case $84: RESx(Reg.H, $01); break;
    case $85: RESx(Reg.L, $01); break;
    case $86: RESm($01);        break;
    case $87: RESx(Reg.A, $01); break;
    
    case $88: RESx(Reg.B, $02); break;
    case $89: RESx(Reg.C, $02); break;
    case $8A: RESx(Reg.D, $02); break;
    case $8B: RESx(Reg.E, $02); break;
    case $8C: RESx(Reg.H, $02); break;
    case $8D: RESx(Reg.L, $02); break;
    case $8E: RESm($02);        break;
    case $8F: RESx(Reg.A, $02); break;
    
    //
    // 9
    //
    case $90: RESx(Reg.B, $04); break;
    case $91: RESx(Reg.C, $04); break;
    case $92: RESx(Reg.D, $04); break;
    case $93: RESx(Reg.E, $04); break;
    case $94: RESx(Reg.H, $04); break;
    case $95: RESx(Reg.L, $04); break;
    case $96: RESm($04);        break;
    case $97: RESx(Reg.A, $04); break;
    
    case $98: RESx(Reg.B, $08); break;
    case $99: RESx(Reg.C, $08); break;
    case $9A: RESx(Reg.D, $08); break;
    case $9B: RESx(Reg.E, $08); break;
    case $9C: RESx(Reg.H, $08); break;
    case $9D: RESx(Reg.L, $08); break;
    case $9E: RESm($018);       break;
    case $9F: RESx(Reg.A, $08); break;   
    
    //
    // A
    //
    case $A0: RESx(Reg.B, $10); break;
    case $A1: RESx(Reg.C, $10); break;
    case $A2: RESx(Reg.D, $10); break;
    case $A3: RESx(Reg.E, $10); break;
    case $A4: RESx(Reg.H, $10); break;
    case $A5: RESx(Reg.L, $10); break;
    case $A6: RESm($10);        break;
    case $A7: RESx(Reg.A, $10); break;
    
    case $A8: RESx(Reg.B, $20); break;
    case $A9: RESx(Reg.C, $20); break;
    case $AA: RESx(Reg.D, $20); break;
    case $AB: RESx(Reg.E, $20); break;
    case $AC: RESx(Reg.H, $20); break;
    case $AD: RESx(Reg.L, $20); break;
    case $AE: RESm($20);        break;
    case $AF: RESx(Reg.A, $20); break;
    
    //
    // B
    //
    case $B0: RESx(Reg.B, $40); break;
    case $B1: RESx(Reg.C, $40); break;
    case $B2: RESx(Reg.D, $40); break;
    case $B3: RESx(Reg.E, $40); break;
    case $B4: RESx(Reg.H, $40); break;
    case $B5: RESx(Reg.L, $40); break;
    case $B6: RESm($40);        break;
    case $B7: RESx(Reg.A, $40); break;
    
    case $B8: RESx(Reg.B, $80); break;
    case $B9: RESx(Reg.C, $80); break;
    case $BA: RESx(Reg.D, $80); break;
    case $BB: RESx(Reg.E, $80); break;
    case $BC: RESx(Reg.H, $80); break;
    case $BD: RESx(Reg.L, $80); break;
    case $BE: RESm($80);        break;
    case $BF: RESx(Reg.A, $80); break;
    
    //
    // C
    //
    case $C0: SETx(Reg.B, $01); break;
    case $C1: SETx(Reg.C, $01); break;
    case $C2: SETx(Reg.D, $01); break;
    case $C3: SETx(Reg.E, $01); break;
    case $C4: SETx(Reg.H, $01); break;
    case $C5: SETx(Reg.L, $01); break;
    case $C6: SETm($01);        break;
    case $C7: SETx(Reg.A, $01); break;
    
    case $C8: SETx(Reg.B, $02); break;
    case $C9: SETx(Reg.C, $02); break;
    case $CA: SETx(Reg.D, $02); break;
    case $CB: SETx(Reg.E, $02); break;
    case $CC: SETx(Reg.H, $02); break;
    case $CD: SETx(Reg.L, $02); break;
    case $CE: SETm($02);        break;
    case $CF: SETx(Reg.A, $02); break;
    
    //
    // D
    //
    case $D0: SETx(Reg.B, $04); break;
    case $D1: SETx(Reg.C, $04); break;
    case $D2: SETx(Reg.D, $04); break;
    case $D3: SETx(Reg.E, $04); break;
    case $D4: SETx(Reg.H, $04); break;
    case $D5: SETx(Reg.L, $04); break;
    case $D6: SETm($04);        break;
    case $D7: SETx(Reg.A, $04); break;
    
    case $D8: SETx(Reg.B, $08); break;
    case $D9: SETx(Reg.C, $08); break;
    case $DA: SETx(Reg.D, $08); break;
    case $DB: SETx(Reg.E, $08); break;
    case $DC: SETx(Reg.H, $08); break;
    case $DD: SETx(Reg.L, $08); break;
    case $DE: SETm($08);        break;
    case $DF: SETx(Reg.A, $08); break;
    
    //
    // E
    //
    case $E0: SETx(Reg.B, $10); break;
    case $E1: SETx(Reg.C, $10); break;
    case $E2: SETx(Reg.D, $10); break;
    case $E3: SETx(Reg.E, $10); break;
    case $E4: SETx(Reg.H, $10); break;
    case $E5: SETx(Reg.L, $10); break;
    case $E6: SETm($10);        break;
    case $E7: SETx(Reg.A, $10); break;
    
    case $E8: SETx(Reg.B, $20); break;
    case $E9: SETx(Reg.C, $20); break;
    case $EA: SETx(Reg.D, $20); break;
    case $EB: SETx(Reg.E, $20); break;
    case $EC: SETx(Reg.H, $20); break;
    case $ED: SETx(Reg.L, $20); break;
    case $EE: SETm($20);        break;
    case $EF: SETx(Reg.A, $20); break;
    
    //
    // F
    //
    case $F0: SETx(Reg.B, $40); break;
    case $F1: SETx(Reg.C, $40); break;
    case $F2: SETx(Reg.D, $40); break;
    case $F3: SETx(Reg.E, $40); break;
    case $F4: SETx(Reg.H, $40); break;
    case $F5: SETx(Reg.L, $40); break;
    case $F6: SETm($40);        break;
    case $F7: SETx(Reg.A, $40); break;
    
    case $F8: SETx(Reg.B, $80); break;
    case $F9: SETx(Reg.C, $80); break;
    case $FA: SETx(Reg.D, $80); break;
    case $FB: SETx(Reg.E, $80); break;
    case $FC: SETx(Reg.H, $80); break;
    case $FD: SETx(Reg.L, $80); break;
    case $FE: SETm($80);        break;
    case $FF: SETx(Reg.A, $80); break;
    
    //
    // UNKNOWN OPERATION
    //
    default: err = true; break;
}

if(err = true) {
    show_debug_message("Unimplemented OPCode: CB" + dec_to_hex(opcode));
    room_goto(rm_window);
}
