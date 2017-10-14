#include <wiringPi.h>

char nGroup[6];
int nSys;
int nSwitchNumber;
int nAction;
int nPlugs;
int nTimeout;
int PORT = 11337;

void error(const char *msg);
int getAddrElro(const char* nGroup, int nSwitchNumber);
int getAddrInt(const char* nGroup, int nSwitchNumber);
// add code for Zap/REV switches
int getAddrZap(const char* nGroup, int nSwitchNumber);

PI_THREAD(switchOn);
PI_THREAD(switchOff);
