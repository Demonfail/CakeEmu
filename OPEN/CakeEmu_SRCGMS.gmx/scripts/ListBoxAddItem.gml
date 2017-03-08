///ListBoxAddItem(listbox, ...);
//
// LIST ITEM STUCTURE
//
/*
    DS_LIST ItemBox = {
        {title, state, width, height (unused), return (to-remove)},
        
        //Item
        {val11, val2, val3, val4, val5}
        
        //Item Count = ITEMS * (sizeof(ItemBox) - 5) / 5;
    };
*/
type =  argument[1];
switch(type) {
    case ListMenuType.Default:
        ds_list_add(argument[0], argument[1], argument[2], 0, 0, 0);
    break;
    
    case ListMenuType.Break:
        ds_list_add(argument[0], argument[1], 0, 0, 0, 0);
    break;
    
    case ListMenuType.Icon:
        ds_list_add(argument[0], argument[1], argument[2], argument[3], argument[4], 0);
    break;
    
    case ListMenuType.Checkbox:
        ds_list_add(argument[0], argument[1], argument[2], 0,           0, argument[3]);
    break;
    
    default:
        return -1;
    break;
}

if(type != ListMenuType.Break) {
    var ds  = argument[0];
    var str = argument[2];
    
    if(string_width(str) > ds[| 2]) {
        ds[| 2] = 64 + string_width(str);
    }
}

return (ds_list_size(argument[0])-5) / 5;
