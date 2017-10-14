DESCRIPTION = "RCSwitch on Raspberry Pi"
LICENSE = "GPL"
VERSION = 1.0

CXXFLAGS += -Wall
CXXFLAGS += -lwiringPi

default: daemon

daemon: ./rc-switch/RCSwitch.o daemon.o
	$(CXX) -Wall -pthread $+ -o $@ $(CXXFLAGS) $(LDFLAGS)

send: ./rc-switch/RCSwitch.o send.o
	$(CXX) $+ -o $@ $(CXXFLAGS) $(LDFLAGS)

clean:
	$(RM) ./rc-switch/*.o *.o send daemon
