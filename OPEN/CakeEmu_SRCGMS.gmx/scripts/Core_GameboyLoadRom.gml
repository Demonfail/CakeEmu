///Core_GameboyLoadRom(rom);
var bf = buffer_load(argument0);
for(var i = 0; i < buffer_get_size(bf); ++i) {
    ROM[i] = buffer_read(bf, buffer_u8);
}
buffer_delete(bf);
