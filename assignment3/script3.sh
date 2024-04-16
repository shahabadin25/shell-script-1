total_size=$(ls -l | grep "^-" | awk '{total += $5} END {print total}')

echo "Total size of the files in bytes: $total_size"
