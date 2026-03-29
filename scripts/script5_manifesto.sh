#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Concept: user input (read), file writing (>>), date

echo "--- Answer three questions to generate your manifesto ---"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. One thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph
echo "On $DATE, I declare my commitment to Open Source." > $OUTPUT
echo "I rely on $TOOL because $FREEDOM is essential in technology." >> $OUTPUT
echo "In the spirit of sharing, I aim to build $BUILD for the community." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT