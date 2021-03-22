#ifndef JOENGHASH_H
#define JOENGHASH_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

void jeonghash_hash(const char* input, char* output, uint32_t len);

#ifdef __cplusplus
}
#endif

#endif