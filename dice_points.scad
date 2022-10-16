include <dice.scad>
type=d20; // d4, d6, d8, d10, d12, d20
text_depth=.1;
draw_text=true;
font="DejaVu Sans";
percent=false; //change to true for percent d10

dice(poly=type, draw_text=draw_text, text_depth=text_depth, font=font, percent=percent);
