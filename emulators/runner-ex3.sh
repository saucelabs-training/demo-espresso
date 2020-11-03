#!/bin/bash

# Example 3: Run one test on 2 emulators
# Run one test on separately available emulators,
# an Android GoogleAPI Emulator with Android 9.0 and an
# Samsung Galaxy S9 Plus WQHD GoogleAPI Emulator with Android 8.1
# this can be in the US(us-west-1) or EU(eu-central-1)
./sauce-runner-virtual \
   -u $SAUCE_USERNAME \
   -k $SAUCE_ACCESS_KEY \
   -f espresso \
   -a ./SauceLabs.Mobile.Sample.Espresso.App.apk \
   -t ./SauceLabs.Mobile.Sample.Espresso.Tests.apk \
   --data-center eu-central-1 \
   -d 'deviceName=Android GoogleAPI Emulator,platformVersion=9.0' \
   -d 'deviceName=Samsung Galaxy S9 Plus WQHD GoogleAPI Emulator,platformVersion=8.1' \
   --include-tests='class com.swaglabsmobileapp.LoginTest#noUsernameLogin'
