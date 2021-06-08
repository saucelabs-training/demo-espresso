# Espresso examples

> **For Demonstration Purposes Only**\
> The code in these scripts is provided on an "AS-IS" basis without warranty of any kind, either express or implied, 
> including without limitation any implied warranties of condition, uninterrupted use, merchantability, fitness for a 
> particular purpose, or non-infringement. These scripts are provided for educational and demonstration purposes only, 
> and should not be used in production. Issues regarding these scripts should be submitted through GitHub. These scripts 
> are maintained by the Technical Services team at Sauce Labs.

## Introduction
This repository will hold multiple examples on how to run Espresso tests on the Sauce Labs cloud. This can be on Android
Emulators, Sauce Labs Android real devices or **both at the same time**,
see [example 9](#example-9---single-execution-on-android-emulators-and-android-real-devices)!
More information on how to use it can be found below and in each folder.

> **NOTE:** If you want to see examples using the Legacy RDC then please check the
> [Legacy RDC](https://github.com/saucelabs-training/demo-espresso/tree/legacy-rdc) branch. Mind the fact that the
> Legacy RDC will be EOL in September 2021.

## What You'll Need
The steps below illustrate one of the quickest ways to get set up. If you'd like a more in-depth guide, please check out
our [documentation](https://docs.saucelabs.com/testrunner-toolkit/installation).

### Install `saucectl`
```shell
curl -L https://saucelabs.github.io/saucectl/install | bash
```

> ⚠️ Make sure saucectl version is newer than **v0.44.0**

## Apps
A prebuilt native Android application and it's Espresso test cases are included in this repo. Source to this application
can be found on GitHub in this [folder](https://github.com/saucelabs/sample-app-mobile/tree/master/android/app/src/androidTest/java/com/swaglabsmobileapp).
The two test-classes can be found here:

- [com.swaglabsmobileapp.LoginTest](https://github.com/saucelabs/sample-app-mobile/blob/master/android/app/src/androidTest/java/com/swaglabsmobileapp/LoginTest.kt)
- [com.swaglabsmobileapp.SwagLabsFlow](https://github.com/saucelabs/sample-app-mobile/blob/master/android/app/src/androidTest/java/com/swaglabsmobileapp/SwagLabsFlow.kt)

The application is bundled in [`SauceLabs.Mobile.Sample.Espresso.App.apk`](apps/SauceLabs.Mobile.Sample.Espresso.App.apk)
and the tests cases are bundled in [`SauceLabs.Mobile.Sample.Espresso.Tests.apk`](apps/SauceLabs.Mobile.Sample.Espresso.Tests.apk).

Screenshots will automatically be uploaded to Sauce Labs and are added by [Spoon](https://github.com/square/spoon) and
the [spoon-gradle-plugin](https://github.com/stanfy/spoon-gradle-plugin). See also the above mentioned classes for the
implementation of Spoon.

## Examples
All below mentioned examples can be found in the [`.sauce`](./.sauce)-folder. You can run the configurations by running
the following command from the root of this folder

      saucectl run --config ./.sauce/runner-ex{#}.yml

The `#` stands for the number of the below mentioned examples.

### Example 1 - Minimal configuration for all tests
`runner-ex1.yml` provides a minimum configuration needed to run the Espresso tests.
In this example, all test cases are executed on a single, available device in sequential order.

### Example 2 - Minimal configuration for 2 tests
`runner-ex2.yml` provides a minimum configuration needed to run the Espresso tests.
In this example, there are two test cases executed on a single, available device in sequential order.

### Example 3 - Run each test on its own device
`runner-ex3.yml` breaks apart the execution of the two test cases such that they can run in parallel on separate devices
that are available (ie., not in use) in the pool.

### Example 4 - Run in parallel on hard-coded devices
`runner-ex4.yml` modifies the second example by specifying which device in the pool to execute each test on.
Still uses parallel execution.

### Example 5 - Parallel execution using dynamic devices
`runner-ex5.yml` uses the `deviceNameQuery` capability to look for available devices using wildcard names.
This example demonstrates the ability to run a specified test(s) on a pool devices that are configured the same but have
different names for parallel processing.

### Example 6 - Parallel execution by platform version
`runner-ex6.yml` uses only the `platformVersion` field to select an available device.
Demonstrates the ability to pick a specific version of Android from the pool of devices for executing tests in parallel.

### Example 7 - Single file test annotation
`runner-ex7.yml` uses Espresso test annotation.
Demonstrates the ability to run four tests based on the `@ErrorFlow`-annotation in a single class,
see [here](https://github.com/saucelabs/sample-app-mobile/blob/master/android/app/src/androidTest/java/com/swaglabsmobileapp/LoginTest.kt#L54).

### Example 8 - Multi file test annotation
`runner-ex8.yml` uses Espresso test annotation.
Demonstrates the ability to run two tests based on the `@HappyFlow`-annotation which are found in two classes,
see [here](https://github.com/saucelabs/sample-app-mobile/blob/master/android/app/src/androidTest/java/com/swaglabsmobileapp/LoginTest.kt#L34)
and [here](https://github.com/saucelabs/sample-app-mobile/blob/master/android/app/src/androidTest/java/com/swaglabsmobileapp/SwagLabsFlow.kt#L35).

### Example 9 - Single execution on Android Emulators and Android Real Devices
`runner-ex9.yml` runs espresso tests on both Android Emulators **AND** Android Real Devices.
