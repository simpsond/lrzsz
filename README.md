# lrzsz
lrzsz from  http://www.ohse.de/uwe/software/lrzsz.html


## Configure on Mac
taken from https://github.com/macports/macports-ports/blob/40cd764449cc1cf7a2e20125e93f5c4e852beae3/comms/lrzsz/Portfile

```shell
CFLAGS="$CFLAGS -Wno-implicit-int -Wno-error=unknown-warning-option -Wno-unknown-warning-option" ./configure --program-transform-name=s/l// --mandir=${prefix}/share/man --disable-nls
```

## Added features from upstream (https://www.ohse.de/uwe/software/lrzsz.html)
* Added --remote-name (-F) to set the file name sent to receiver which is useful when streaming
* Added --stream-length (-I) to set the file size sent to the receiver which is useful when streaming


## New Feature Examples
`demos/curl_zmodem.sh` shows an example of using curl to get a file name and size from a URL and then streaming the
file via zmodem in a way that allows the receiver to know both the name and size of the file.
