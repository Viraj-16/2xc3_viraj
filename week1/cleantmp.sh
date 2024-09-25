original_dir=$PWD

echo "Enter the directory where you want to delete .tmp files:"
read target_dir

target_dir=$(eval echo "$target_dir")

if [ -d "$target_dir" ]; then
    cd "$target_dir" || { echo "Failed to change directory!"; exit 1; }

    echo "Deleting .tmp files in $target_dir"
    rm -v *.tmp 2> /dev/null

    cd "$original_dir"
    echo "Returned to original directory: $original_dir"
else
    echo "The specified directory does not exist."
fi
