AS      = arm-linux-gnueabihf-as
LD      = arm-linux-gnueabihf-ld
LDFLAGS =
SFLAGS  =

object1s = example1s.o

default: example1s

.PHONY: default clean clobber

example1s: $(object1s)
	$(LD) $(LDFLAGS) -o $@ $^

example1s.o: example1s.s

%.o: %.s
	$(AS) -c $(SFLAGS) -o $@ $<

clean:
	rm -f $(object1s) example1s

qemu: example1s
	qemu-arm -g 1234 ./example1s
	echo $$?

