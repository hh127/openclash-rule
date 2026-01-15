#!/bin/bash

# 下载最新版的 Mihomo 核心用于转换
# 也可以根据你的环境预先在 Action 中下载
# 假设 mihomo 可执行文件已经在当前目录或 PATH 中

mkdir -p ./mrs

for file in *.list; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .list)
        echo "Converting $file to mrs..."
        # 使用 mihomo convert-ruleset 指令
        ./mihomo convert-ruleset domain text "$file" "./mrs/${filename}.mrs"
    fi
done