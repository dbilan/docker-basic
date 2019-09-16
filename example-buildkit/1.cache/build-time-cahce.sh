START=$(date +%s)
docker build -t buildkit:legacy-cache .
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"
