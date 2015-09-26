require "appium_lib"

caps = {
  caps: {
    deviceName: 'iPhone 6 Device',
    deviceOrientation: 'portrait',
    platformVersion: "8.0",
    platformName: "iOS",
    app: 'https://s3.amazonaws.com/appium/TestApp-iphoneos.app.zip',
    name: 'sample iPhone 6 real device test'
  }
}

@driver = Appium::Driver.new(caps)
@driver.start_driver

@driver.find_elements(:accessibility_id, "TextField1").send_keys "12"

@driver.driver_quit
