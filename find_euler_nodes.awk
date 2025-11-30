awk ' !/[{}]/ {outdeg[$1]++; indeg[$3]++} END {
        for (node in outdeg) {
                if (outdeg[node] - indeg[node] == 1) print "Start:", node
        }
        for (node in indeg) {
            if (indeg[node] - outdeg[node] == 1) print "End:", node
        }
    }' "$1"
    
#out counts how man times a node appears as a prefix, in does the same for suffices
#more out than in, likely a start node, more in than out, likely an end node.