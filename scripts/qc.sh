#!/bin/bash
# 质量控制脚本

# 创建输出目录
mkdir -p results/qc

# 运行FastQC质控
fastqc -o results/qc/ data/*.fastq

# 多样本汇总报告
multiqc results/qc/ -o results/multiqc_report
