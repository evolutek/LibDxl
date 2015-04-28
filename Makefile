TARGET  = libdxl.so
SOURCES = dxl_hal.c dynamixel.c
OBJECTS = $(SOURCES:.c=.o)
CFLAGS  = -std=c99 -Wall -Wextra -pedantic -O2 -fPIC
# Uncomment if you are using
# http://www.xevelabs.com/doku.php?id=product:usb2ax:usb2ax
#CFLAGS += -DUSE_USB2AX
CC      = gcc

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -shared $^ -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)
