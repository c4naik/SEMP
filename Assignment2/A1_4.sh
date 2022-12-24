#/bin/bash
output=$(fdupes -f firstdir)
echo "$output"
mv -f $output dir2/
