# TweetUtil
Utilities for tweets processing.

The filter tool provides convenient function to filter tweets based on geographical bounding box. Boxes could ba pre-defined following the simple rules in ```bbox``` folder and can be used with names. If bbox not provided, tweets without precise ```<lat,lon>``` will be filtered out.

Results are output to stdout, need redirection to save to files.

Assuming order of ```<lat,lon>``` by default. Pass environment ```new=1``` to switch to ```<lon,lat>``` format.

## Installation

```make install```

Use ```make clean``` to uninstall

## Usage

```filter [pre-defined_bbox_names|specified_bbox_file] Tweets-csv-from-streaming-API```

### Example

```filter chicago sampleData/chi.twt```

```filter sampleData/test.twt >geo-tagged.twt```

```new=1 filter chicago sampleData/test.twt```

## Misc

After installation a ```bbox``` function will be added to the .bashrc as a shortcut to display pre-defined bounding boxes. E.g. ```bbox chicago``` will print the content of chicago.bbox.

re-logging in or ```source ~/.bashrc``` to enable the function after installation
