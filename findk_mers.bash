seq=$1
k=$2

if [[ -z "$seq" || -z "$k" ]]; then
    echo "Usage: $0 <sequence> <k>" >&2
    exit 1
fi

if ! [[ "$k" =~ ^[0-9]+$ ]]; then
    echo "Error, k must be an integer" >&2
    exit 1
fi


if (( ${#seq} < k )); then
    echo "k is longer than the sequence length." >&2
    exit 1
fi


for ((i=0;i<=${#seq}-k; i++)); do
    echo "${seq:i:k}"
done

