# Antennas on Docker

[Antennas](https://github.com/thejf/antennas) is a Crystal port of tvhProxy which is a program that translates the Tvheadend API to emulate a HDHomeRun API. This is particularly useful to connect Plex's DVR feature to Tvheadend.

## Usage
```
docker create \
  --name=antennas \
  -v <path/to/config>:/tmp/config \
  -p 5004:5004 \
  thejf/antennas
```

This will mount a volume, set by yourself in path/to/config, that will need a config.yml to work. Example of a config.yml is [available here](https://github.com/TheJF/antennas/blob/master/config/config.yml), or below:
```
tvheadend_url: http://replace:me@x.x.x.x:9981
tvheadend_weight: 300
tuner_count: 6
```

Note, I'll eventually make this work with environment variables, Crystal is just not cooperating with me on this at the moment.


