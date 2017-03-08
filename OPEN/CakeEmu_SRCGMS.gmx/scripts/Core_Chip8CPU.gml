///Core_Chip8CPU();
gml_pragma("forceinline");
var opcode = $0000, err = false;

opcode = (buffer_read_from(RAM, PC, buffer_u8) << 8) | buffer_read_from(RAM, PC+1, buffer_u8);

switch((opcode & $F000) >> 12) {
    case $0: err = c8_sys0(opcode); break;
    case $1: c8_1NNN(opcode); break;
    case $2: c8_2NNN(opcode); break;
    case $3: c8_3XNN(opcode); PC += 2; break;
    case $4: c8_4XNN(opcode); PC += 2; break;
    case $5: c8_5XY0(opcode); PC += 2; break;
    case $6: c8_6XNN(opcode); PC += 2; break;
    case $7: c8_7XNN(opcode); PC += 2; break;
    case $8: err = c8_math(opcode); break;
    case $9: c8_9XY0(opcode); PC += 2; break;
    case $A: c8_ANNN(opcode); PC += 2; break;
    case $B: c8_BNNN(opcode); break;
    case $C: c8_CXNN(opcode); PC += 2; break;
    case $D: c8_DXYN(opcode); PC += 2; break;
    case $E: err = c8_io(opcode); break;
    case $F: err = c8_sys1(opcode); break;
    
    default:
        err = true;
    break;
}

if(DTIMER > 0) {
    DTIMER -= 1 * ((60 / 1000000) * delta_time);
}else
if(DTIMER < 0) {
    DTIMER = 0;
}

if(err = true) {
    show_debug_message("Unimplemented OPCode: " + dec_to_hex(opcode));
    room_goto(rm_window);
}
