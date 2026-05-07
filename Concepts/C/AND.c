#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int main() {
  char pwr1[100];
  char pwr2[100];

  int a =3;
  int b =5;
  bool isActive =false;
  bool isActive2 =false;
  bool areActive =false;

  printf("Power 1 (On/Off??)\n");
  
  fgets(pwr1, sizeof(pwr1), stdin);
  pwr1[strcspn(pwr1, "\n")] = '\0';

  printf("Power 2 (On/Off??)\n");

  fgets(pwr2, sizeof(pwr2), stdin);
  pwr2[strcspn(pwr2, "\n")] = '\0';

  if (strcmp(pwr1, "On") ==0) {
    isActive =true;
  }

  if (strcmp(pwr2, "On") ==0) {
    isActive2 =true;
  }

  if (isActive && isActive2) {
    areActive =true;
  }

  if (areActive) {
    printf("AND Gate = True\n");
  } else {
    printf("AND Gate = False\n");
  }
}
