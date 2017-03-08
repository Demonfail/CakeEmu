///Core_Chip48SPU();
gml_pragma("forceinline");

if(STIMER > 0) {
    keyboard_set_numlock(true);
    STIMER -= 1 * ((60 / 1000000) * delta_time);
}else{
    STIMER = 0;
    keyboard_set_numlock(false);
}
