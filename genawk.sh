#!/bin/bash

sed '1s/AWK_PATH/'$(which awk | sed 's/\//\\\//g')'/' ${PWD}/filterByBbox.awk.temp >${PWD}/filterByBbox.awk
