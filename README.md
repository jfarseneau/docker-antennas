# Antennas on Docker

[Antennas](https://github.com/thejf/antennas) is a Crystal port of tvhProxy which is a program that translates the Tvheadend API to emulate a HDHomeRun API. This is particularly useful to connect Plex's DVR feature to Tvheadend.

## Usage
```
docker create \
  --name=antennas \
  -e TVHEADEND_URL=http://user:pass@x.x.x.x:9981 \
  -e TVHEADEND_WEIGHT=300 \
  -e TUNER_COUNT=6
  -p 5004:5004 \
  thejf/antennas
```

Replace `http://user:pass@x.x.x.x:9981` to match your own Tvheadend settings, and you should be good to go! Note that `localhost` won't work, so you should preferably put in the IP address of your Tvheadend in full.
