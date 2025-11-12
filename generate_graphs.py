#!/usr/bin/env python3

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
import os

if not os.path.exists("Graphs"):
    os.makedirs("Graphs")

sns.set_style("whitegrid")
plt.rcParams["figure.figsize"] = (12, 7)


def load_data():
    if not os.path.exists("analysis_data.csv"):
        print("Error: analysis_data.csv not found!")
        exit(1)
    return pd.read_csv("analysis_data.csv")


def graph_cache_size(df):
    data = df[df["config"].str.contains("dl1_.*kb.*way", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(12, 7))
    plt.bar(range(len(data[:10])), data["sim_IPC"][:10], color="steelblue")
    plt.xlabel("Configuration")
    plt.ylabel("IPC")
    plt.title("Cache Size Impact on Performance")
    plt.xticks(range(len(data[:10])), data["config"][:10], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_cache_size.png", dpi=300)
    plt.close()
    print("Created: graph_cache_size.png")


def graph_associativity(df):
    data = df[df["config"].str.contains("dl1_.*kb_.*way", na=False)]
    if len(data) < 4:
        return

    plt.figure(figsize=(12, 7))
    plt.plot(range(len(data[:12])), data["dl1_miss_rate"][:12], "o-", linewidth=2)
    plt.xlabel("Configuration")
    plt.ylabel("Miss Rate")
    plt.title("Associativity vs Miss Rate")
    plt.xticks(range(len(data[:12])), data["config"][:12], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_associativity.png", dpi=300)
    plt.close()
    print("Created: graph_associativity.png")


def graph_l2_cache(df):
    data = df[df["config"].str.contains("l2_", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(12, 7))
    plt.bar(range(len(data)), data["sim_IPC"], color="coral")
    plt.xlabel("L2 Configuration")
    plt.ylabel("IPC")
    plt.title("L2 Cache Size Impact")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_l2_cache.png", dpi=300)
    plt.close()
    print("Created: graph_l2_cache.png")


def graph_tlb(df):
    data = df[df["config"].str.contains("dtlb_.*entry", na=False)]
    if data.empty:
        return

    plt.subplots(figsize=(16, 7))
    plt.plot(range(len(data)), data["sim_IPC"], "s-", color="darkblue", linewidth=2)
    plt.xlabel("Configuration")
    plt.ylabel("IPC")
    plt.title("DTLB Size vs Performance")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_dtlb.png", dpi=300)
    plt.close()
    print("Created: graph_dtlb.png")
    
    data = df[df["config"].str.contains("itlb_.*entry", na=False)]
    if data.empty:
        return

    plt.subplots(figsize=(16, 7))
    plt.plot(range(len(data)), data["sim_IPC"], "s-", color="darkblue", linewidth=2)
    plt.xlabel("Configuration")
    plt.ylabel("IPC")
    plt.title("ITLB Size vs Performance")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_itlb.png", dpi=300)
    plt.close()
    print("Created: graph_itlb.png")


def graph_pipeline(df):
    data = df[df["config"].str.contains("issue_.*way", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(12, 7))
    plt.plot(
        range(len(data)),
        data["sim_IPC"],
        "o-",
        color="purple",
        linewidth=3,
        markersize=10,
    )

    if len(data) > 0:
        base_ipc = data.iloc[0]["sim_IPC"]
        ideal = [base_ipc * (i + 1) for i in range(len(data))]
        plt.plot(
            range(len(data)), ideal, "--", color="gray", linewidth=2, label="Ideal"
        )

    plt.xlabel("Issue Width")
    plt.ylabel("IPC")
    plt.title("Pipeline Width Scaling")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.legend()
    plt.tight_layout()
    plt.savefig("Graphs/graph_pipeline_issue.png", dpi=300)
    plt.close()
    print("Created: graph_pipeline_issue.png")
    
    data = df[df["config"].str.contains("decode_.*way", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(12, 7))
    plt.plot(
        range(len(data)),
        data["sim_IPC"],
        "o-",
        color="purple",
        linewidth=3,
        markersize=10,
    )

    if len(data) > 0:
        base_ipc = data.iloc[0]["sim_IPC"]
        ideal = [base_ipc * (i + 1) for i in range(len(data))]
        plt.plot(
            range(len(data)), ideal, "--", color="gray", linewidth=2, label="Ideal"
        )

    plt.xlabel("Decode Width")
    plt.ylabel("IPC")
    plt.title("Pipeline Width Scaling")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.legend()
    plt.tight_layout()
    plt.savefig("Graphs/graph_pipeline_decode.png", dpi=300)
    plt.close()
    print("Created: graph_pipeline_decode.png")
    
    data = df[df["config"].str.contains("commit_.*way", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(12, 7))
    plt.plot(
        range(len(data)),
        data["sim_IPC"],
        "o-",
        color="purple",
        linewidth=3,
        markersize=10,
    )

    if len(data) > 0:
        base_ipc = data.iloc[0]["sim_IPC"]
        ideal = [base_ipc * (i + 1) for i in range(len(data))]
        plt.plot(
            range(len(data)), ideal, "--", color="gray", linewidth=2, label="Ideal"
        )

    plt.xlabel("Commit Width")
    plt.ylabel("IPC")
    plt.title("Pipeline Width Scaling")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.legend()
    plt.tight_layout()
    plt.savefig("Graphs/graph_pipeline_commit.png", dpi=300)
    plt.close()
    print("Created: graph_pipeline_commit.png")


def graph_rob(df):
    data = df[df["config"].str.contains("rob_.*entry", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(12, 7))
    plt.plot(
        range(len(data)),
        data["sim_IPC"],
        "D-",
        color="orangered",
        linewidth=2,
        markersize=8,
    )
    plt.xlabel("ROB Size")
    plt.ylabel("IPC")
    plt.title("Reorder Buffer Size Impact")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_rob.png", dpi=300)
    plt.close()
    print("Created: graph_rob.png")
    
    data = df[df["config"].str.contains("lsq_.*entry", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(12, 7))
    plt.plot(
        range(len(data)),
        data["sim_IPC"],
        "D-",
        color="orangered",
        linewidth=2,
        markersize=8,
    )
    plt.xlabel("LSQ Size")
    plt.ylabel("IPC")
    plt.title("Load Store Queue Size Impact")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_lsq.png", dpi=300)
    plt.close()
    print("Created: graph_lsq.png")


def graph_branch_predictor(df):
    data = df[df["config"].str.contains("bpred_", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(16, 7))
    plt.bar(range(len(data)), data["sim_IPC"], color="slateblue")
    plt.xlabel("Predictor Type")
    plt.ylabel("IPC")
    plt.title("Predictor Impact on Performance")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_branch_predictor.png", dpi=300)
    plt.close()
    print("Created: graph_branch_predictor.png")


def graph_repl(df):
    data = df[df["config"].str.contains("repl_", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(16, 7))
    plt.bar(range(len(data)), data["sim_IPC"], color="slateblue")
    plt.xlabel("Replacement Policy")
    plt.ylabel("IPC")
    plt.title("Replacement Policy Impact on Performance")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_repl.png", dpi=300)
    plt.close()
    print("Created: graph_repl.png")
    
    
def graph_fu(df):
    data = df[df["config"].str.contains("fu_", na=False)]
    if data.empty:
        return

    plt.figure(figsize=(16, 7))
    plt.bar(range(len(data)), data["sim_IPC"], color="slateblue")
    plt.xlabel("Functional Units")
    plt.ylabel("IPC")
    plt.title("Functional Units Impact on Performance")
    plt.xticks(range(len(data)), data["config"], rotation=45, ha="right")
    plt.tight_layout()
    plt.savefig("Graphs/graph_fu.png", dpi=300)
    plt.close()
    print("Created: graph_fu.png")


def graph_summary(df):
    top_configs = df.nlargest(15, "sim_IPC")

    plt.figure(figsize=(14, 10))
    plt.barh(range(len(top_configs)), top_configs["sim_IPC"], color="mediumseagreen")
    plt.yticks(range(len(top_configs)), top_configs["config"])
    plt.xlabel("IPC")
    plt.title("Top 15 Configurations by Performance")
    plt.tight_layout()
    plt.savefig("Graphs/graph_summary.png", dpi=300)
    plt.close()
    print("Created: graph_summary.png")


def main():
    print("Loading data...")
    df = pd.read_csv("analysis_data.csv")
    print(f"Loaded {len(df)} configurations\n")

    print("Generating graphs...")
    graph_cache_size(df)
    graph_associativity(df)
    graph_l2_cache(df)
    graph_tlb(df)
    graph_pipeline(df)
    graph_rob(df)
    graph_branch_predictor(df)
    graph_repl(df)
    graph_fu(df)
    graph_summary(df)

    print("\nAll graphs generated successfully!")


if __name__ == "__main__":
    import os

    main()
