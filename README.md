# lrzsz
lrzsz from  http://www.ohse.de/uwe/software/lrzsz.html


## Configure on Mac, taken from https://github.com/macports/macports-ports/blob/40cd764449cc1cf7a2e20125e93f5c4e852beae3/comms/lrzsz/Portfile

```shell
CFLAGS="$CFLAGS -Wno-implicit-int -Wno-error=unknown-warning-option -Wno-unknown-warning-option" ./configure --program-transform-name=s/l// --mandir=${prefix}/share/man --disable-nls
```