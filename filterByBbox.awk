#!/usr/bin/env awk -f
BEGIN{
FS="\x01";
}

$3 ~ /,/{
#$3!="" && $3!="null"{
if (ENVIRON["ALL_GEO"] == 1) {
    print;
    next;
}

split($3,xy,",");

if (ENVIRON["new"] != "1") {
    # lat,lon for 2013-2015
    y = xy[1];
    x = xy[2];
}
else { #Default lon,lat for 2016+
    x = xy[1];
    y = xy[2];
}
#x=xy[ENVIRON["lat"]];
#y=xy[ENVIRON["lon"]];

#print x,y
#print ENVIRON["left"], ENVIRON["right"];
#print ENVIRON["bottom"], ENVIRON["top"];

if ((x >= ENVIRON["left"] && x <= ENVIRON["right"] && y >= ENVIRON["bottom"] && y <= ENVIRON["top"])) {print;}
}
