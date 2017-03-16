#!/bin/awk -f
BEGIN{
FS="\x01";
print ENVIRON["left"], ENVIRON["right"], ENVIRON["bottom"], ENVIRON["top"]
}

($3!="") && ($3!="null"){
split($3,xy,",");
if (xy[2] >= ENVIRON["left"] && xy[2] <= ENVIRON["right"] && xy[1] >= ENVIRON["bottom"] && xy[1] <= ENVIRON["top"]) {print;}
}
