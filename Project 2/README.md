# RRIP Cache Replacement Policy – SimpleScalar

This project adds RRIP (Re-Reference Interval Prediction) as a new cache replacement policy in the SimpleScalar (sim-outorder) simulator and compares it with LRU.

## Overview:
RRIP uses a 2-bit counter to predict when a block will be re-referenced. It performs better than LRU for irregular access patterns.

## Key Implementation Changes:
- Added RRIP enum and rrpv field in cache.h
- Implemented SRRIP victim selection in cache.c
- Updated hit/miss handling and policy parsing
- Enabled RRIP via -cache:dl1 ...:p

## How to Build & Run:
```bash
make clean
```

```bash
make
```

Compile the RRIP benchmark file (if using rrip.c)
```bash
~/simplescalar/bin/sslittle-na-sstrix-gcc -o rrip rrip.c
```

```bash
./sim-outorder -cache:dl1 dl1:32:32:4:l /benchmark/rrip   (LRU)
```

```bash
./sim-outorder -cache:dl1 dl1:32:32:4:p /benchmark/rrip   (RRIP)
```

## Results:
DL1 Miss Rate — LRU: 0.0758, RRIP: 0.0757

## Authors:
Lokesh Lingam, Rahul Dewangan
