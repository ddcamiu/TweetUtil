#!/bin/awk -f
BEGIN{
FS="\x01";
}

$3!="" && $3!="null"{
split($3,xy,",");
if (xy[0] >= ENVIRON["left"] && xy[0] <= ENVIRON["right"] && xy[1] >= ENVIRON["bottom"] && xy[1] <= ENVIRON["top"]) print;
}
