# sequence-assembly-class
This repository contains a few steps of sequence assembly implemented in Bash and AWK as part of a bioinformatics class unit focused on sequence assembly.
## Problem Overview
Sequence assembly is a crucial concept in bioinformatics. An important part is de-bruijn graph assembly, where k-mers and start/end nodes should be resolved to reconstruct the parent sequence. Kmers are used because they break down sequencing reads into manageable substrings researchers can use in de-bruijn graphs. Finding the start and end nodes of the graph is crucial to determine the start and end of the parents sequence
## Languages Used
Bash
AWK
## -- Scripts in this repository -- ##
## K-mer generator (findk_mers.bash)
Uses a sliding window approach on an input string and desired kmer length k to generate k-1mers. 
Command line usage: ./find_kmers.bash [string] [k] #k must be numerical
## Euler node finder (find_euler_nodes.awk)
Uses .dot graph to categorize edges as 'incoming' or 'outgoing' depending on the position of a given node ($1 or $3, edge is $2). Determines the start and end nodes mathematically; if there are more outgoing edges than incoming, the node is the start substring; if there are more incoming edges than outgoing, the node is the end substring.
Command line usage: ./find_euler_nodes.awk [graph] #ideally a .dot file
## K-mer and de-bruijn graph generator (bash)
Uses a sliding window approach on an input string and desired kmer length to generate k-1mers. After, organizes substrings into prefixes and suffixes for parent string reconstruction. 
## Usage Instructions
Given an input string, run find_kmers_bash first. Next, create a graph with GraphViz software on the command line, and run find_euler_nodes.awk to identify your start and end sequence.
