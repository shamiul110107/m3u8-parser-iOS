# m3u8-parser-iOS
# This code is for parsing the m3u8 master playlist file written in objective-c

Here is the example of content of file

#EXTM3U
#EXT-X-VERSION:3
#EXT-X-STREAM-INF:BANDWIDTH=284000,CODECS="avc1.66.21,mp4a.40.2",RESOLUTION=284x160
chunklist_b264000.m3u8
#EXT-X-STREAM-INF:BANDWIDTH=449000,CODECS="avc1.66.30,mp4a.40.2",RESOLUTION=426x240
chunklist_b414000.m3u8
#EXT-X-STREAM-INF:BANDWIDTH=724000,CODECS="avc1.66.31,mp4a.40.2",RESOLUTION=854x480
chunklist_b664000.m3u8

You can parse BANDWIDTH, CODECS,RESOLUTION etc from this file
