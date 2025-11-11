#!/usr/bin/env python3

import os
import re
import csv
from glob import glob


def extract_metrics(filepath):
    metrics = {
        "config": os.path.basename(filepath).replace(".txt", ""),
        "sim_num_insn": 0,
        "sim_cycle": 0,
        "sim_IPC": 0.0,
        "sim_CPI": 0.0,
        "il1_accesses": 0,
        "il1_hits": 0,
        "il1_misses": 0,
        "il1_miss_rate": 0.0,
        "dl1_accesses": 0,
        "dl1_hits": 0,
        "dl1_misses": 0,
        "dl1_miss_rate": 0.0,
        "ul2_accesses": 0,
        "ul2_hits": 0,
        "ul2_misses": 0,
        "ul2_miss_rate": 0.0,
        "itlb_accesses": 0,
        "itlb_hits": 0,
        "itlb_misses": 0,
        "itlb_miss_rate": 0.0,
        "dtlb_accesses": 0,
        "dtlb_hits": 0,
        "dtlb_misses": 0,
        "dtlb_miss_rate": 0.0,
        "bpred_lookups": 0,
        "bpred_updates": 0,
        "bpred_addr_rate": 0.0,
        "bpred_dir_rate": 0.0,
    }

    try:
        with open(filepath, "r") as f:
            content = f.read()

            patterns = {
                "sim_num_insn": r"sim_num_insn\s+(\d+)",
                "sim_cycle": r"sim_cycle\s+(\d+)",
                "sim_IPC": r"sim_IPC\s+([\d.]+)",
                "sim_CPI": r"sim_CPI\s+([\d.]+)",
                "il1_accesses": r"il1\.accesses\s+(\d+)",
                "il1_hits": r"il1\.hits\s+(\d+)",
                "il1_misses": r"il1\.misses\s+(\d+)",
                "il1_miss_rate": r"il1\.miss_rate\s+([\d.]+)",
                "dl1_accesses": r"dl1\.accesses\s+(\d+)",
                "dl1_hits": r"dl1\.hits\s+(\d+)",
                "dl1_misses": r"dl1\.misses\s+(\d+)",
                "dl1_miss_rate": r"dl1\.miss_rate\s+([\d.]+)",
                "ul2_accesses": r"ul2\.accesses\s+(\d+)",
                "ul2_hits": r"ul2\.hits\s+(\d+)",
                "ul2_misses": r"ul2\.misses\s+(\d+)",
                "ul2_miss_rate": r"ul2\.miss_rate\s+([\d.]+)",
                "itlb_accesses": r"itlb\.accesses\s+(\d+)",
                "itlb_hits": r"itlb\.hits\s+(\d+)",
                "itlb_misses": r"itlb\.misses\s+(\d+)",
                "itlb_miss_rate": r"itlb\.miss_rate\s+([\d.]+)",
                "dtlb_accesses": r"dtlb\.accesses\s+(\d+)",
                "dtlb_hits": r"dtlb\.hits\s+(\d+)",
                "dtlb_misses": r"dtlb\.misses\s+(\d+)",
                "dtlb_miss_rate": r"dtlb\.miss_rate\s+([\d.]+)",
                "bpred_lookups": r"bpred_bimod\.lookups\s+(\d+)",
                "bpred_updates": r"bpred_bimod\.updates\s+(\d+)",
                "bpred_addr_rate": r"bpred_bimod\.addr_rate\s+([\d.]+)",
                "bpred_dir_rate": r"bpred_bimod\.dir_rate\s+([\d.]+)",
            }

            for key, pattern in patterns.items():
                match = re.search(pattern, content)
                if match:
                    value = match.group(1)
                    if "." in value:
                        metrics[key] = float(value)
                    else:
                        metrics[key] = int(value)

    except Exception as e:
        print(f"Error processing {filepath}: {e}")

    return metrics


def main():
    results_dir = "Results"
    output_csv = "analysis_data.csv"

    result_files = glob(f"{results_dir}/*.txt")

    def extract_number(filename):
        match = re.findall(r"\d+", os.path.basename(filename))
        return int(match[0]) if match else float("inf")

    result_files.sort(key=lambda x: (extract_number(x), os.path.basename(x)))

    if not result_files:
        print(f"No result files found in {results_dir}/")
        return

    print(f"Found {len(result_files)} result files (sorted)")
    print("Extracting metrics...")

    all_metrics = []
    for i, filepath in enumerate(result_files, 1):
        print(f"Processing {i}/{len(result_files)}: {os.path.basename(filepath)}")
        metrics = extract_metrics(filepath)
        all_metrics.append(metrics)

    if all_metrics:
        fieldnames = all_metrics[0].keys()
        with open(output_csv, "w", newline="") as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(all_metrics)

        print(f"\nData extracted successfully!")
        print(f"Output saved to: {output_csv}")
        print(f"Total configurations analyzed: {len(all_metrics)}")
    else:
        print("No data extracted!")


if __name__ == "__main__":
    main()
