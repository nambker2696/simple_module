obj-m+=device_example_char.o
KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules
	$(CC) test_device_example_char.c -o test
clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean
	rm test