total_size=0
for file in *
do
if [ -f $file ]
then
size=`ls -l $file | cut -d " " -f 5`
echo "size of file $file in bytes:$size"
total_size=$(( $total_size+$size ))
fi
done

echo "Total size of the files in bytes: $total_size"
