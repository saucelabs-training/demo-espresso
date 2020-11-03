#!/bin/bash

# Example 2: Minimal configuration for 2 tests
# Run 2 tests on a Android GoogleAPI Emulator with Android 9,
# this can be in the US(us-west-1) or EU(eu-central-1)
./sauce-runner-virtual \
   -u $SAUCE_USERNAME \
   -k $SAUCE_ACCESS_KEY \
   -f espresso \
   -a ./SauceLabs.Mobile.Sample.Espresso.App.apk \
   -t ./SauceLabs.Mobile.Sample.Espresso.Tests.apk \
   --data-center eu-central-1 \
   -d 'deviceName=Android GoogleAPI Emulator,platformVersion=9.0' \
   --include-tests='class com.swaglabsmobileapp.LoginTest#successfulLogin,com.swaglabsmobileapp.LoginTest#noUsernameLogin'
