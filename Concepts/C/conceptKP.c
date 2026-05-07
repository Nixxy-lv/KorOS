#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main() {
  printf("\033[31m\n");

  printf("---------------------------------------------------------------\n");
  printf(" \033[33mKernel Panic!\033[31m  \nA fatal error has occured in Kore-Sys\n");
  printf(
"      .--.\n"
"     |o_o |\n"
"     |:_/ |\n"
"    //   \\ \\\n"
"   (|     | )\n"
"   /'\\_   _/`\\\n"
"   \\___)=(___/   TUX is in Panic! :( \n"
  );
  printf("------------------------------------------|\n");
  printf("\n");
  printf(" Please wait... The Kernel is resolving the error\n");
  sleep(4);
  printf("\n");
  printf("\n");
  printf("\n");
  printf(" You're safe to reboot now. (R) Do you wanna see what happened and then reboot? (D)\n\n");

  char ans[100];

  fgets(ans, sizeof(ans), stdin);

  ans[strcspn(ans, "\n")] = 0;

  if (strcmp(ans, "R") ==0) {
    printf("Rebooting...\n");
    sleep(2);
  } else if (strcmp(ans, "D") ==0) {
    sleep(1);
    printf(" --Diagnosis: Corrupted Register 0x05065\n");
    sleep(5);
    printf("Rebooting now...\n");
    sleep(2);
  }
}
