///Core_Chip48IO();
gml_pragma("forceinline");

for(var i = 0;  i < 16; ++i) {
    KEY[i] = keyboard_check_direct(KEYMAP[i]);
}
