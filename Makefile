CFLAGS = -Wall -O2 -fPIC -rdynamic -shared
CXXFLAGS = -Wall -O2 -fPIC -rdynamic -shared
LDFLAGS =

all: ldpreload-forcerdonly.so ldpreload-forceurandom.so ldpreload-prebind.so ldpreload-unixbind.so

%.so: %.c
	$(CC) $(CFLAGS) $(LDFLAGS) -ldl -o $@ $<

%.so: %.cpp
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -ldl -o $@ $<

clean:
	rm -f *.so

.PHONY: all clean
