import sys
import os

filename = sys.argv[1] if len(sys.argv) > 1 else "tb_dc_analysis.spice"

if not os.path.exists(filename):
    print(f"Error: {filename} not found.")
    exit(0)

with open(filename, "r") as f:
    lines = f.readlines()

with open(filename, "w") as f:
    for line in lines:
        # 只要行里包含 sky130 模型（不管 nfet 还是 pfet）
        if "sky130_fd_pr__" in line:
            parts = line.split()
            clean_parts = []
            for part in parts:
                # 见到 expr 就删，宁可错杀一千，不可放过一个
                if "expr" in part and ("=" in part):
                    continue
                clean_parts.append(part)
            f.write(" ".join(clean_parts) + "\n")
        else:
            f.write(line)
print(f"Fixed ALL transistors in {filename} successfully!")
