///dec_to_hex(decimal_number);
var num1, decimal, hexpos, hexlist, sRevReturn, sReturn;
hexlist = "0123456789ABCDEF";
sRevReturn = "";
sReturn = "";
num1 = argument0;
if(num1 == 0)
{
    return "00";
}

while(num1 > 0)
{
decimal = (num1 / 16);
num1 = floor(decimal);
hexpos = (decimal - num1) * 16;
sRevReturn += string_char_at( hexlist, hexpos+1 );
}

for( i=string_length( sRevReturn ) + 1; i>0; i-=1 )
{
    sReturn += string_char_at( sRevReturn, i );
}
if(string_length(sReturn) == 1)
{
    sReturn = "0"+sReturn;
}
return sReturn;
