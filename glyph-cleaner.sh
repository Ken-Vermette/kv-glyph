#!/bin/bash

SOURCEDIR="$PWD/source-svgs";
TARGETDIR="$PWD/cleaned-svgs";

if [ ! -d "$TARGETDIR" ]; then
  mkdir -p "$TARGETDIR";
fi

for FILE in "$SOURCEDIR/"*".svg"; do
	FILENAME="$(basename -- $FILE)"
	
	if [ ! -s "$TARGETDIR/$FILENAME" ]; then
		echo "Formatting $FILENAME";
		scour -i "$FILE" -o "$TARGETDIR/$FILENAME" --enable-id-stripping --enable-comment-stripping --shorten-ids
		FROM=$(stat -c%s "$TARGETDIR/$FILENAME")
		CONTENTS=$(perl -0777pe "s/<metadata>.*?<\/metadata>[\n\t\r\s]*//s" "$TARGETDIR/$FILENAME")
		echo "$CONTENTS" > "$TARGETDIR/$FILENAME"
		TO=$(stat -c%s "$TARGETDIR/$FILENAME")
		echo "$FILENAME $FROM -> $TO";
	fi
	
	
done