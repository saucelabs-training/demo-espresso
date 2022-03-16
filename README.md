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
see [example 8](#example-8---single-execution-on-android-emulators-and-android-real-devices)!
More information on how to use it can be found below and in each folder.

## Prerequisites
- Please check our [documentation](https://docs.saucelabs.com/testrunner-toolkit/installation) for installing SauceCTL
- Make sure you've set up your credentials on your local machine and or CI-pipeline, see
  [this](https://docs.saucelabs.com/testrunner-toolkit/installation#associating-your-sauce-labs-account)-doc
- Check the [Espresso](https://docs.saucelabs.com/testrunner-toolkit/configuration/espresso/index.html)-docs for all options

### Install `saucectl`
```shell
curl -L https://saucelabs.github.io/saucectl/install | bash
```

> ⚠️ Make sure saucectl version is newer than **v0.44.0**

## Apps
A prebuilt native Android application and it's Espresso test cases are included in this repo. Source to this application
can be found on GitHub in this [folder](https://github.com/saucelabs/my-demo-app-android).
The test-classes can be found [here](https://github.com/saucelabs/my-demo-app-android/tree/main/app/src/androidTest/java/com/saucelabs/mydemoapp/android/view/activities).

The application is bundled in [`mda-1.0.8-10.apk`](apps/mda-1.0.8-10.apk)
and the tests cases are bundled in [`mda-androidTest-1.0.8-10.apk`](apps/mda-androidTest-1.0.8-10.apk).

## Examples
All below mentioned examples can be found in the [`.sauce`](/.sauce)-folder. You can run the configurations by running
the following command from the root of this folder

      saucectl run --config ./.sauce/runner-ex{#}.yml

The `#` stands for the number of the below mentioned examples.

### Example 1 - Minimal configuration for all tests
[`runner-ex1.yml`](/.sauce/runner-ex1.yml) provides a minimum configuration needed to run the Espresso tests.
In this example, all test cases are executed on a single, available device in sequential order.\
[![Espresso - Example 1](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-1.yml/badge.svg)](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-1.yml)

### Example 2 - Minimal configuration for 2 tests
[`runner-ex2.yml`](/.sauce/runner-ex2.yml) provides a minimum configuration needed to run the Espresso tests.
In this example, there are two test cases executed on a single, available device in sequential order.\
[![Espresso - Example 2](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-2.yml/badge.svg)](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-2.yml)

### Example 3 - Run each test on its own device
[`runner-ex3.yml`](/.sauce/runner-ex3.yml) breaks apart the execution of the two test cases such that they can run in 
parallel on separate devices that are available (ie., not in use) in the pool.\
[![Espresso - Example 3](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-3.yml/badge.svg)](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-3.yml)

### Example 4 - Run in parallel on hard-coded devices
[`runner-ex4.yml`](/.sauce/runner-ex4.yml) modifies the second example by specifying which device in the pool to execute 
each test on. Still uses parallel execution.\
[![Espresso - Example 4](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-4.yml/badge.svg)](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-4.yml)

### Example 5 - Parallel execution using dynamic devices
[`runner-ex5.yml`](/.sauce/runner-ex5.yml) uses the `deviceNameQuery` capability to look for available devices using 
wildcard names. This example demonstrates the ability to run a specified test(s) on a pool devices that are configured 
the same but have different names for parallel processing.\
[![Espresso - Example 5](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-5.yml/badge.svg)](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-5.yml)

### Example 6 - Parallel execution by platform version
[`runner-ex6.yml`](/.sauce/runner-ex6.yml) uses only the `platformVersion` field to select an available device.
Demonstrates the ability to pick a specific version of Android from the pool of devices for executing tests in parallel.\
[![Espresso - Example 6](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-6.yml/badge.svg)](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-6.yml)

### Example 7 - Single file test annotation
[`runner-ex7.yml`](/.sauce/runner-ex7.yml) uses Espresso test annotation.
Demonstrates the ability to run four tests based on the `@ErrorFlow`-annotation in a single class,
see [here](https://github.com/saucelabs/sample-app-mobile/blob/master/android/app/src/androidTest/java/com/swaglabsmobileapp/LoginTest.kt#L54).\
[![Espresso - Example 7](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-7.yml/badge.svg)](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-7.yml)

### Example 8 - Single execution on Android Emulators and Android Real Devices
[`runner-ex8.yml`](/.sauce/runner-ex8.yml) runs espresso tests on both Android Emulators **AND** Android Real Devices.\
[![Espresso - Example 8](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-8.yml/badge.svg)](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-8.yml)

### Example 9 - Shard all tests over multiple instances
[`runner-ex9.yml`](/.sauce/runner-ex9.yml) runs espresso all tests on multiple Android Real Devices and Android 
Emulators by automatically sharding the tests. `saucectl` automatically creates the sharded jobs for each of the devices 
defined for the suite based on the number of shards you specify.\
[![Espresso - Example 9](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-9.yml/badge.svg)](https://github.com/saucelabs-training/demo-espresso/actions/workflows/example-9.yml) 
