#!/bin/bash

gcc memory_stress_pmem.c
sudo perf stat -B -d -d -d -e dtlb_load_misses.miss_causes_a_walk ./a.out 19
rm a.out