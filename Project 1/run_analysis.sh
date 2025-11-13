#!/bin/bash


Results="Results"
Benchmark="/home/rahul/simplescalar/simplesim-3.0/tests-pisa/bin.little/test-fmath"

echo "Total configurations: 149"

mkdir -p $Results

echo "Running L1 cache tests..."
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:16:64:1:l $Benchmark > $Results/dl1_1kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:16:64:2:l $Benchmark > $Results/dl1_1kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:32:64:1:l $Benchmark > $Results/dl1_2kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:32:64:2:l $Benchmark > $Results/dl1_2kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:32:64:4:l $Benchmark > $Results/dl1_2kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:64:64:1:l $Benchmark > $Results/dl1_4kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:64:64:2:l $Benchmark > $Results/dl1_4kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:64:64:4:l $Benchmark > $Results/dl1_4kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:128:64:1:l $Benchmark > $Results/dl1_8kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:128:64:2:l $Benchmark > $Results/dl1_8kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:128:64:4:l $Benchmark > $Results/dl1_8kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:128:64:8:l $Benchmark > $Results/dl1_8kb_8way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:64:1:l $Benchmark > $Results/dl1_16kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:64:2:l $Benchmark > $Results/dl1_16kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:64:4:l $Benchmark > $Results/dl1_16kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:64:8:l $Benchmark > $Results/dl1_16kb_8way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:64:1:l $Benchmark > $Results/dl1_32kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:64:2:l $Benchmark > $Results/dl1_32kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:64:4:l $Benchmark > $Results/dl1_32kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:64:8:l $Benchmark > $Results/dl1_32kb_8way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:1024:64:1:l $Benchmark > $Results/dl1_64kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:1024:64:2:l $Benchmark > $Results/dl1_64kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:1024:64:4:l $Benchmark > $Results/dl1_64kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:1024:64:8:l $Benchmark > $Results/dl1_64kb_8way.txt 2>&1

echo "Running block size tests..."
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:32:2:l $Benchmark > $Results/dl1_8kb_32B_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:128:64:2:l $Benchmark > $Results/dl1_8kb_64B_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:64:128:2:l $Benchmark > $Results/dl1_8kb_128B_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:32:4:l $Benchmark > $Results/dl1_8kb_32B_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:128:64:4:l $Benchmark > $Results/dl1_8kb_64B_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:64:128:4:l $Benchmark > $Results/dl1_8kb_128B_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:32:2:l $Benchmark > $Results/dl1_16kb_32B_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:64:2:l $Benchmark > $Results/dl1_16kb_64B_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:128:128:2:l $Benchmark > $Results/dl1_16kb_128B_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:32:4:l $Benchmark > $Results/dl1_16kb_32B_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:128:128:4:l $Benchmark > $Results/dl1_16kb_128B_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:1024:32:2:l $Benchmark > $Results/dl1_32kb_32B_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:64:2:l $Benchmark > $Results/dl1_32kb_64B_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:128:2:l $Benchmark > $Results/dl1_32kb_128B_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:1024:32:4:l $Benchmark > $Results/dl1_32kb_32B_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:64:4:l $Benchmark > $Results/dl1_32kb_64B_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:128:4:l $Benchmark > $Results/dl1_32kb_128B_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:16:4:l $Benchmark > $Results/dl1_8kb_16B_4way.txt 2>&1

echo "Running IL1 cache tests..."
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:32:64:1:l $Benchmark > $Results/il1_2kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:64:64:1:l $Benchmark > $Results/il1_4kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:128:64:1:l $Benchmark > $Results/il1_8kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:256:64:1:l $Benchmark > $Results/il1_16kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:512:64:1:l $Benchmark > $Results/il1_32kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:1024:64:1:l $Benchmark > $Results/il1_64kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:256:64:2:l $Benchmark > $Results/il1_16kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:256:64:4:l $Benchmark > $Results/il1_16kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:256:64:8:l $Benchmark > $Results/il1_16kb_8way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:512:64:2:l $Benchmark > $Results/il1_32kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:512:64:4:l $Benchmark > $Results/il1_32kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:il1 il1:512:64:8:l $Benchmark > $Results/il1_32kb_8way.txt 2>&1

echo "Running L2 cache tests..."
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 none $Benchmark > $Results/l2_none.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:64:64:4:l $Benchmark > $Results/l2_16kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:128:64:4:l $Benchmark > $Results/l2_32kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:256:64:4:l $Benchmark > $Results/l2_64kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:512:64:4:l $Benchmark > $Results/l2_128kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:1024:64:4:l $Benchmark > $Results/l2_256kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:2048:64:4:l $Benchmark > $Results/l2_512kb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:4096:64:4:l $Benchmark > $Results/l2_1mb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:8192:64:4:l $Benchmark > $Results/l2_2mb_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:1024:64:1:l $Benchmark > $Results/l2_256kb_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:1024:64:2:l $Benchmark > $Results/l2_256kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:1024:64:8:l $Benchmark > $Results/l2_256kb_8way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:1024:64:16:l $Benchmark > $Results/l2_256kb_16way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:2048:64:2:l $Benchmark > $Results/l2_512kb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:2048:64:8:l $Benchmark > $Results/l2_512kb_8way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:2048:64:16:l $Benchmark > $Results/l2_512kb_16way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:4096:64:2:l $Benchmark > $Results/l2_1mb_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:4096:64:8:l $Benchmark > $Results/l2_1mb_8way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:4096:64:16:l $Benchmark > $Results/l2_1mb_16way.txt 2>&1

echo "Running TLB tests..."
~/simplescalar/simplesim-3.0/sim-outorder -tlb:dtlb dtlb:4:4096:4:l $Benchmark > $Results/dtlb_4entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:dtlb dtlb:8:4096:8:l $Benchmark > $Results/dtlb_8entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:dtlb dtlb:16:4096:16:l $Benchmark > $Results/dtlb_16entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:dtlb dtlb:32:4096:32:l $Benchmark > $Results/dtlb_32entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:dtlb dtlb:64:4096:64:l $Benchmark > $Results/dtlb_64entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:dtlb dtlb:128:4096:128:l $Benchmark > $Results/dtlb_128entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:dtlb dtlb:256:4096:256:l $Benchmark > $Results/dtlb_256entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:dtlb dtlb:64:4096:1:l $Benchmark > $Results/dtlb_64entry_direct.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:dtlb dtlb:64:4096:4:l $Benchmark > $Results/dtlb_64entry_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:itlb itlb:8:4096:8:l $Benchmark > $Results/itlb_8entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:itlb itlb:16:4096:16:l $Benchmark > $Results/itlb_16entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:itlb itlb:32:4096:32:l $Benchmark > $Results/itlb_32entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:itlb itlb:64:4096:64:l $Benchmark > $Results/itlb_64entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:itlb itlb:128:4096:128:l $Benchmark > $Results/itlb_128entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:itlb itlb:256:4096:256:l $Benchmark > $Results/itlb_256entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -tlb:lat 10 $Benchmark > $Results/tlb_lat_10cycles.txt 2>&1

echo "Running pipeline tests..."
~/simplescalar/simplesim-3.0/sim-outorder -issue:width 1 $Benchmark > $Results/issue_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -issue:width 2 $Benchmark > $Results/issue_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -issue:width 4 $Benchmark > $Results/issue_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -issue:width 8 $Benchmark > $Results/issue_8way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -decode:width 1 $Benchmark > $Results/decode_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -decode:width 2 $Benchmark > $Results/decode_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -decode:width 4 $Benchmark > $Results/decode_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -decode:width 8 $Benchmark > $Results/decode_8way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -commit:width 1 $Benchmark > $Results/commit_1way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -commit:width 2 $Benchmark > $Results/commit_2way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -commit:width 4 $Benchmark > $Results/commit_4way.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -commit:width 8 $Benchmark > $Results/commit_8way.txt 2>&1

echo "Running RUU and LSQ tests..."
~/simplescalar/simplesim-3.0/sim-outorder -ruu:size 4 $Benchmark > $Results/rob_4entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -ruu:size 8 $Benchmark > $Results/rob_8entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -ruu:size 16 $Benchmark > $Results/rob_16entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -ruu:size 32 $Benchmark > $Results/rob_32entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -ruu:size 64 $Benchmark > $Results/rob_64entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -ruu:size 128 $Benchmark > $Results/rob_128entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -ruu:size 256 $Benchmark > $Results/rob_256entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -ruu:size 512 $Benchmark > $Results/rob_512entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -lsq:size 2 $Benchmark > $Results/lsq_2entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -lsq:size 4 $Benchmark > $Results/lsq_4entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -lsq:size 8 $Benchmark > $Results/lsq_8entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -lsq:size 16 $Benchmark > $Results/lsq_16entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -lsq:size 32 $Benchmark > $Results/lsq_32entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -lsq:size 64 $Benchmark > $Results/lsq_64entry.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -lsq:size 128 $Benchmark > $Results/lsq_128entry.txt 2>&1

echo "Running branch predictor tests..."
~/simplescalar/simplesim-3.0/sim-outorder -bpred nottaken $Benchmark > $Results/bpred_nottaken.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -bpred taken $Benchmark > $Results/bpred_taken.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -bpred perfect $Benchmark > $Results/bpred_perfect.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -bpred bimod $Benchmark > $Results/bpred_bimod.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -bpred 2lev $Benchmark > $Results/bpred_2level.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -bpred comb $Benchmark > $Results/bpred_combined.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -bpred bimod -bpred:bimod 512 $Benchmark > $Results/bpred_bimod_512.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -bpred bimod -bpred:bimod 1024 $Benchmark > $Results/bpred_bimod_1024.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -bpred bimod -bpred:bimod 2048 $Benchmark > $Results/bpred_bimod_2048.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -bpred bimod -bpred:bimod 4096 $Benchmark > $Results/bpred_bimod_4096.txt 2>&1

echo "Running functional unit tests..."
~/simplescalar/simplesim-3.0/sim-outorder -res:ialu 1 $Benchmark > $Results/fu_ialu_1.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -res:ialu 2 $Benchmark > $Results/fu_ialu_2.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -res:ialu 4 $Benchmark > $Results/fu_ialu_4.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -res:ialu 8 $Benchmark > $Results/fu_ialu_8.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -res:imult 1 $Benchmark > $Results/fu_imult_1.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -res:imult 2 $Benchmark > $Results/fu_imult_2.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -res:memport 1 $Benchmark > $Results/fu_memport_1.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -res:memport 2 $Benchmark > $Results/fu_memport_2.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -res:memport 4 $Benchmark > $Results/fu_memport_4.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -res:memport 8 $Benchmark > $Results/fu_memport_8.txt 2>&1

echo "Running replacement policy tests..."
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:64:4:l $Benchmark > $Results/repl_dl1_lru.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:64:4:f $Benchmark > $Results/repl_dl1_fifo.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:64:4:r $Benchmark > $Results/repl_dl1_random.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:1024:64:8:l $Benchmark > $Results/repl_l2_lru.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:1024:64:8:f $Benchmark > $Results/repl_l2_fifo.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl2 dl2:1024:64:8:r $Benchmark > $Results/repl_l2_random.txt 2>&1

echo "Running combined configuration tests..."
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:512:64:4:l -cache:il1 il1:512:64:4:l -cache:dl2 dl2:2048:64:8:l -issue:width 8 -ruu:size 128 -lsq:size 64 -bpred comb $Benchmark > $Results/config_aggressive.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:256:64:2:l -cache:il1 il1:256:64:2:l -cache:dl2 dl2:1024:64:4:l -issue:width 4 -ruu:size 64 -lsq:size 32 $Benchmark > $Results/config_balanced.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:128:64:1:l -cache:il1 il1:128:64:1:l -cache:dl2 dl2:512:64:2:l -issue:width 2 -ruu:size 32 -lsq:size 16 $Benchmark > $Results/config_conservative.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:1024:64:4:l -cache:il1 il1:1024:64:4:l -cache:dl2 dl2:4096:64:8:l -tlb:dtlb dtlb:128:4096:128:l -tlb:itlb itlb:128:4096:128:l $Benchmark > $Results/config_memory_opt.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -issue:width 8 -decode:width 8 -commit:width 8 -ruu:size 256 -lsq:size 128 -res:ialu 8 -res:memport 4 $Benchmark > $Results/config_cpu_opt.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder -cache:dl1 dl1:64:32:2:l -cache:il1 il1:64:32:2:l -cache:dl2 dl2:256:64:2:l -issue:width 2 -ruu:size 16 $Benchmark > $Results/config_small.txt 2>&1
~/simplescalar/simplesim-3.0/sim-outorder $Benchmark > $Results/config_baseline.txt 2>&1

echo "Analysis complete at $(date)"
echo "Total files created: $(ls $Results/*.txt | wc -l)"
