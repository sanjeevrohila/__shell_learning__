set -e
#set -x

echo "#### Declaring an Array "files""
declare -a files=()

echo "####run command ls -ltr | cut -c 63- and appending####"
echo "#### runfiles to the array files####"
for file in `ls -ltr | cut -c 63-`; do
    files+=($file)
done;

echo "####Printing specif array elements by index####"
echo ${files[1]}
echo ${files[2]}
echo ${files[3]}
echo ${files[4]}
echo ${files[5]}

echo "####Iterating over Array####"
for file in "${files[@]}"
do
   echo $file
done
