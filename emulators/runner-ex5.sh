#!/bin/bash

# Example 5 - Single file test annotation
# Demonstrates the ability to run four tests based on the `@ErrorFlow`-annotation in a single class
# this can be in the US(us-west-1) or EU(eu-central-1)
./sauce-runner-virtual \
   -u $SAUCE_USERNAME \
   -k $SAUCE_ACCESS_KEY \
   -f espresso \
   -a ./SauceLabs.Mobile.Sample.Espresso.App.apk \
   -t ./SauceLabs.Mobile.Sample.Espresso.Tests.apk \
   --data-center eu-central-1 \
   -d 'deviceName=Android GoogleAPI Emulator,platformVersion=9.0' \
   --include-tests='annotation com.swaglabsmobileapp.ErrorFlow'
