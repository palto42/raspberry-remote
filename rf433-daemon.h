#include <wiringPi.h>

char nGroup[6];
int nSys;
int nSwitchNumber;
char nSwitch[6];
int nAction;
int nPlugs;
int nTimeout;
int PORT = 11337;

void error(const char *msg);
void getBin(int num, char *str);
int getAddrElro(const char* nGroup, int nSwitchNumber);
int getAddrInt(const char* nGroup, int nSwitchNumber);
// add code for Zap/REV switches
int getDecimalZap(const char* nGroup, int nSwitchNumber, int nAction);

PI_THREAD(switchOn);
PI_THREAD(switchOff);
