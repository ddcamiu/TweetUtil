# TweetUtil
Utilities for tweets processing.

The filter tool provides convenient function to filter tweets based on geographical bounding box. Boxes could ba pre-defined following the simple rules in ```bbox``` folder and can be used with names. If bbox not provided, tweets without precise ```<lat,lon>``` will be filtered out.

Results are output to stdout, need redirection to save to files.

Assuming order of ```<lat,lon>``` by default. Pass environment ```new=1``` to switch to ```<lon,lat>``` format.

## Installation

```./install.sh```

## Usage

```filter [pre-defined_bbox_names|specified_bbox_file] Tweets-csv-from-streaming-API```

### Example

```filter chicago sampleData/chi.twt```

```filter sampleData/test.twt >geo-tagged.twt```

```new=1 filter chicago sampleData/test.twt```
