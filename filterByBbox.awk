#!/bin/awk -f
BEGIN{
FS="\x01";
}

($3!="") && ($3!="null"){
split($3,xy,",");

print xy[1], ENVIRON["left"], ENVIRON["right"];
print xy[2], ENVIRON["bottom"], ENVIRON["top"];

if ((ENVIRON["ALL_GEO"] == 1) || (xy[1] >= ENVIRON["left"] && xy[1] <= ENVIRON["right"] && xy[2] >= ENVIRON["bottom"] && xy[2] <= ENVIRON["top"])) {print;}
}
