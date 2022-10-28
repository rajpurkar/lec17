# loop over all lines in file files.txt
while read line; do
    # download file
    echo https://physionet.org/files/mimic-cxr-jpg/2.0.0/files/p10/$line/ >> files2.txt
done < files.txt

wget -r -N -c -np --user pranavsr --ask-password -i files2.txt
