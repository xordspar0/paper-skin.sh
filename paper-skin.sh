#!/bin/sh

SCALE_FACTOR=48
SCALE_PERCENT=${SCALE_FACTOR}00%

if [ "$#" -ne 2 ]
then
	echo "paper-skin is a simple utility for making 
Minecraft player skins into printable paper crafts."
	echo "usage: paper-skin SKIN_FILE OUTPUT_FILE"
	echo "You can download your current skin at 
minecraft.net/skin/YOUR_USERNAME.png"
	exit 1
fi

INPUT_FILE="$1"
OUTPUT_FILE="$2"

if [ ! -e "$INPUT_FILE" ]
then
	echo "File $INPUT_FILE does not exist."
	exit 1
fi

if [ -e "$OUTPUT_FILE" ]
then
	echo "File $OUTPUT_FILE already exists."
	exit 1
fi

cp template-printable.png $OUTPUT_FILE

convert "$OUTPUT_FILE" -geometry 2550x3300 \
\( "$INPUT_FILE" -crop 8x8+8+0 -scale "$SCALE_PERCENT" \) -geometry +455+80 -composite \
\( "$INPUT_FILE" -crop 32x8+0+8 -scale "$SCALE_PERCENT" \) -geometry +71+464 -composite \
\( "$INPUT_FILE" -crop 8x8+16+0 -scale "$SCALE_PERCENT" \) -geometry +455+848 -composite \
\( "$INPUT_FILE" -crop 4x4+4+16 -scale "$SCALE_PERCENT" \) -geometry +317+2276 -composite \
\( "$INPUT_FILE" -crop 16x12+0+20 -scale "$SCALE_PERCENT" \) -geometry +125+2468 -composite \
\( "$INPUT_FILE" -crop 4x4+8+16 -scale "$SCALE_PERCENT" \) -geometry +317+3044 -composite \
\( "$INPUT_FILE" -crop 4x4+4+16 -scale "$SCALE_PERCENT" \) -geometry +1353+2276 -composite \
\( "$INPUT_FILE" -crop 16x12+0+20 -scale "$SCALE_PERCENT" \) -geometry +1161+2468 -composite \
\( "$INPUT_FILE" -crop 4x4+8+16 -scale "$SCALE_PERCENT" \) -geometry +1353+3044 -composite \
\( "$INPUT_FILE" -crop 8x4+20+16 -scale "$SCALE_PERCENT" \) -geometry +609+1349 -composite \
\( "$INPUT_FILE" -crop 24x12+16+20 -scale "$SCALE_PERCENT" \) -geometry +417+1541 -composite \
\( "$INPUT_FILE" -crop 8x4+28+16 -scale "$SCALE_PERCENT" \) -geometry +609+2117 -composite \
\( "$INPUT_FILE" -crop 4x4+44+16 -scale "$SCALE_PERCENT" \) -geometry +1934+145 -composite \
\( "$INPUT_FILE" -crop 16x12+40+20 -scale "$SCALE_PERCENT" \) -geometry +1742+337 -composite \
\( "$INPUT_FILE" -crop 4x4+48+16 -scale "$SCALE_PERCENT" \) -geometry +1934+913 -composite \
\( "$INPUT_FILE" -crop 4x4+44+16 -scale "$SCALE_PERCENT" \) -geometry +1931+1175 -composite \
\( "$INPUT_FILE" -crop 16x12+40+20 -scale "$SCALE_PERCENT" \) -geometry +1739+1367 -composite \
\( "$INPUT_FILE" -crop 4x4+48+16 -scale "$SCALE_PERCENT" \) -geometry +1931+1943 -composite \
"$OUTPUT_FILE"

