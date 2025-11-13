# Memory Hierarchy Design and Performance Analysis

This project explores how cache size, associativity, pipeline width, TLB entries, and branch prediction
affect the performance of a superscalar processor using the **SimpleScalar** simulator.  
A total of **149 configurations** were tested using the standard `test-fmath` benchmark to identify
bottlenecks, optimal design points, and diminishing returns across different architectural parameters.

---

## How to Run

### 1. Install Python and Required Packages
```bash
sudo apt install python3 -y
sudo apt install python3-pandas python3-matplotlib python3-seaborn python3-numpy -y
```

### 2. Install and Set Up SimpleScalar
Make sure SimpleScalar is installed and the benchmark `test-fmath` is available
(it comes pre-included in most SimpleScalar setups).

### 3. Run the Automation Script
Change the test file path and sim-outorder path in run_analysis.sh

Make the bash file executable by running the following command:
```bash
chmod +x run_all.sh
```

All steps — simulation, data extraction, and graph generation — can be executed with one command:
```bash
./run_all.sh
```

This will:
- Run all **149 configurations** automatically  
- Extract performance metrics like IPC and miss rates into `analysis_data.csv`  
- Generate all graphs inside the `Graphs/` folder  


### Authors
**Rahul Dewangan (25CS06008)**  
**Lokesh Lingam (25CS06005)**  

Under the guidance of **Dr. Devashree Tripathy**  
Department of Computer Science and Engineering  
Indian Institute of Technology Bhubaneswar
