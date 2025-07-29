#!/bin/bash
cd /Users/thanh/PycharmProjects/ParrotPhonemize/ParrotPhonemize
export ESPEAK_DATA_PATH="/Users/thanh/PycharmProjects/ParrotPhonemize/ParrotPhonemize"
./src/.libs/espeak-ng -v vi --stdout "Xin chào" > test_output.wav
echo "Audio generated to test_output.wav"
