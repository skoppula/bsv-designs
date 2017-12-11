#include <string.h>
#include <stdlib.h>

unsigned char do_trace(const char *tag) {
    const char *v = getenv("BSV_TRACE");
    if (v == NULL)
        return 1;
    if (strcmp(v, "0") == 0)
        return 0;
    return strstr(v, tag) != NULL;
}
