#!/bin/bash

echo "Memory Hierarchy and Performance Analysis Project by RAHUL and LOKESH"
echo ""

echo "Running 149 configurations..."
echo ""

chmod +x run_analysis.sh
./run_analysis.sh

echo ""
chmod +x extract_data.py
python3 extract_data.py

echo ""
chmod +x generate_graphs.py
python3 generate_graphs.py


echo "Done!"
echo ""