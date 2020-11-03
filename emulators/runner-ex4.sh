#!/bin/bash

# Example 4 - Exclude 1 test
# Run all testcases on an Android GoogleAPI Emulator with Android 9.0 except for 1
# this can be in the US(us-west-1) or EU(eu-central-1)
./sauce-runner-virtual \
   -u $SAUCE_USERNAME \
   -k $SAUCE_ACCESS_KEY \
   -f espresso \
   -a ./SauceLabs.Mobile.Sample.Espresso.App.apk \
   -t ./SauceLabs.Mobile.Sample.Espresso.Tests.apk \
   --data-center eu-central-1 \
   -d 'deviceName=Android GoogleAPI Emulator,platformVersion=9.0' \
   --exclude-tests='class com.swaglabsmobileapp.LoginTest#noUsernameLogin'
