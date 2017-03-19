# TweetUtil
Utilities for tweets processing.

The filter tool provides convenient function to filter tweets based on geographical bounding box. Boxes could ba pre-defined following the simple rules in ```bbox``` folder and can be used with names. 

Results are output to stdout, need redirection to save to files.

Assuming order of ```<lat,lon>``` by default. Pass environment ```new=1``` to switch to ```<lon,lat>``` format.

## Installation

```make install```

Use ```make clean``` to uninstall

## Usage

Basic usage: ```filter [pre-defined_bbox_names|specified_bbox_file] Tweets-csv-from-streaming-API```

If bbox parameter not provided, will first try to get "top" "bottom" "left" "right" from environment; then if one of them is missing, or "no_bbox=1" in environment, will return all tweets with precise ```<lat,lon>```.

### Example

```filter chicago sampleData/chi.twt```

```left=-88.0417 bottom=41.6165 right=-87.5061 top=42.1176 filter sampleData/chi.twt```

```no_bbox=1 filter sampleData/test.twt >geo-tagged.twt```

```new=1 filter las_vegas sampleData/test.twt```

When searching the same bbox in multiple tweets files, suggest using GNU parallel. E.g.

```parallel new=1 filter iowa ::: tweets.2016-07-{01..09} >iowa_july_first_week.twt```

## Misc

After installation a ```bbox``` function will be added to the .bashrc as a shortcut to display pre-defined bounding boxes. E.g. ```bbox chicago``` will print the content of chicago.bbox.

re-logging in or ```source ~/.bashrc``` to enable the function after installation
