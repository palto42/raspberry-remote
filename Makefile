DESCRIPTION = "RCSwitch on Raspberry Pi"
LICENSE = "GPL"
VERSION = 1.0

# Defines the RPI variable which is needed by rc-switch/RCSwitch.h
CXXFLAGS=-DRPI

default: rf433-daemon

rf433-daemon: ./rc-switch/RCSwitch.o rf433-daemon.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

send: ./rc-switch/RCSwitch.o send.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

clean:
	$(RM) ./rc-switch/*.o *.o send rf433-daemon
