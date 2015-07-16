#include <stdio.h>
#include <stdlib.h>

static const char* WOODO_SUDO_REPRESENTATION
=
"    _              __\n"
"   / `\\  (~._    ./  )\n"
"   \\__/ __`-_\\__/ ./ \n"
"  _ \\ \\/  \\   \\ |_   __\n"
"(   )  \\__/ -^    \\ /  \\ \n"
" \\_/ \"  \\  | o  o  |.. /  __\n"
"      \\\\. --\" ====  /  || /  \\\\ \n"
"        \\   .  .  |---__.\\__/\n"
"        /  :     /   |   |\n"
"        /   :   /     \\_/\n"
"     --/ ::    (\n"
"    (  |     (  (____\n"
"  .--  .. ----**.____)\n"
"  \\___/\n";
static const char* WOODO_USER_REPRESENTATION
=
"It's a weird tree.\n";

int main(void) {
  printf("%s", getuid() ? WOODO_USER_REPRESENTATION :
                          WOODO_SUDO_REPRESENTATION);
  exit(EXIT_SUCCESS);
}
