#include<stdio.h>

int main(int argc, char * argv[]) {
  int counter;
  printf("Program Name Is: %s", argv[0]);
  if (argc == 1)
    printf("\n Usage: dcalc [operand] <operator> [operand], for help use: 'dcalc help'");
  if (argc >= 2) 
  {
    int realArgc = argc;
    realArgc = --realArgc;
    printf("\nNumber Of Arguments Passed: %d", realArgc);
    for (counter = 1; counter < argc; counter++)
      printf("\nargv[%d]: %s", counter, argv[counter]);
  }
  if (argv[1] == help) {
      printf("")
  }
  return 0;
}