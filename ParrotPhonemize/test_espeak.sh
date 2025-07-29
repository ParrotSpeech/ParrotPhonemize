#!/bin/bash

# Set the data path
export ESPEAK_DATA_PATH="/Users/thanh/PycharmProjects/ParrotPhonemize/ParrotPhonemize"

# Test espeak-ng with Vietnamese text
echo "Testing eSpeak NG with Vietnamese text..."
echo "Data path: $ESPEAK_DATA_PATH"

# Check if the binary exists
if [ -f "./src/.libs/espeak-ng" ]; then
    echo "Binary found: ./src/.libs/espeak-ng"
    
    # Test version
    echo "Version check:"
    ./src/.libs/espeak-ng --version
    
    # Test Vietnamese text
    echo "Testing Vietnamese text 'Xin chào':"
    ./src/.libs/espeak-ng -v vi "Xin chào"
    
    # List available voices
    echo "Available voices:"
    ./src/.libs/espeak-ng --voices | grep -E "(vi|viet)" || echo "No Vietnamese voices found, trying default:"
    ./src/.libs/espeak-ng --voices | head -5
    
else
    echo "Binary not found at ./src/.libs/espeak-ng"
fi
