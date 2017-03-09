///barray_copy(dest, dest_off, src, src_offset, length);
gml_pragma("forceinline");

var j = argument1;
for(var i = argument3; i < argument4; ++i) {
    argument0[@ j] = argument2[@ i];
    j++;
}
