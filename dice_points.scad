// uncheck Window > hide customizer if it is checked. On the customizer pane on the right, expand "Parameters". 

include <dice.scad>
include <indicator.scad>

type=d4; // ["d4", "d6", "d8", "d10", "d12", "d20"]
text_depth=.1; // [0.1:0.05:1.0]
draw_text=true;
font="DejaVu Sans:style=Bold";
percent=false; //change to true for percent d10
dice(d10, draw_text=true, font=font, percent=percent);

points = [d12[0][16],d12[0][1],d12[0][10],d12[0][8],d12[0][0],];
//points = [d12[0][13],d12[0][15],d12[0][5],d12[0][10],d12[0][1],];
//points = [d12[0][5],d12[0][18],d12[0][4],d12[0][8],d12[0][10],];
//points = [d12[0][4],d12[0][14],d12[0][12],d12[0][0],d12[0][8],]; //<<
//points = [d12[0][12],d12[0][2],d12[0][17],d12[0][16],d12[0][0],];
//points = [d12[0][17],d12[0][3],d12[0][13],d12[0][1],d12[0][16],];
//points = [d12[0][19],d12[0][7],d12[0][11],d12[0][9],d12[0][6],]; //<<
//points = [d12[0][15],d12[0][13],d12[0][3],d12[0][11],d12[0][7],]; //<<
//points = [d12[0][3],d12[0][17],d12[0][2],d12[0][9],d12[0][11],]; //<<
//points = [d12[0][2],d12[0][12],d12[0][14],d12[0][6],d12[0][9],];
//points = [d12[0][14],d12[0][4],d12[0][18],d12[0][19],d12[0][6],];
//points = [d12[0][18],d12[0][5],d12[0][15],d12[0][7],d12[0][19],]; //<<
