COUNT=0
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
find $DIR -name "*.jpg" | while read FILE; do
    EXTENSION=${FILE##*.}
    mv "$FILE" "$(dirname "$FILE")/$COUNT.$EXTENSION"
    let COUNT+=1
done
