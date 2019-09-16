START=$(date +%s)
docker build --no-cache -t buildpack:legacy .
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"
