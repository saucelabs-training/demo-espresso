#!/bin/bash

# Example 6 - Multi file test annotation
# Demonstrates the ability to run two tests based on the `@HappyFlow`-annotation which are found in two classes,
# this can be in the US(us-west-1) or EU(eu-central-1)
./sauce-runner-virtual \
   -u $SAUCE_USERNAME \
   -k $SAUCE_ACCESS_KEY \
   -f espresso \
   -a ./SauceLabs.Mobile.Sample.Espresso.App.apk \
   -t ./SauceLabs.Mobile.Sample.Espresso.Tests.apk \
   --data-center eu-central-1 \
   -d 'deviceName=Android GoogleAPI Emulator,platformVersion=9.0' \
   --include-tests='annotation com.swaglabsmobileapp.HappyFlow'
