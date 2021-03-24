CC = gcc
CFLAGS = -g -Wall -c -fPIC -O2 -Wno-pointer-sign -Wno-return-type -Wno-char-subscripts -Wno-unused-variable -Wno-uninitialized -Wno-unused-function -Wno-strict-aliasing -Wno-discarded-qualifiers -Wno-unused-const-variable -Wno-implicit-function-declaration -Wno-cpp -msse4 -msse4.1 -msse4.2 -mssse3 -mavx -mpclmul -maes
CXXFLAGS = -g -Wall -fPIC -fpermissive -O2 -Wno-char-subscripts -Wno-unused-variable -Wno-uninitialized -Wno-unused-function -Wno-strict-aliasing -Wno-sign-compare -Wno-cpp -std=c++11 -msse4 -msse4.1 -msse4.2 -mssse3 -mavx -mpclmul -maes
LDFLAGS = -shared
LDLIBS = -lsodium
TARGET  = libnewhash.so

OBJECTS = heavyhash/heavyhash.o heavyhash/keccak_tiny.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
	g++ $(LDFLAGS) -o $@ $^ $(LDLIBS)

.PHONY: clean

clean:
	find . -name '*.o' -exec rm -r {} \;
	rm -f libnewhash.so
