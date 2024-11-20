from robot.api.deco import keyword
from appium import webdriver

class CustomLibrary:
    def __init__(self):
        self.driver = None

    @keyword
    def set_appium_driver(self, driver):
        self.driver = driver

    @keyword
    def get_element_color(self, xpath):
        if self.driver is None:
            raise ValueError("Appium driver is not initialized")
        element = self.driver.find_element_by_xpath(xpath)
        # Fetching color attribute; this depends on what the actual attribute is
        color = element.get_attribute('color')  # Adjust based on actual implementation
        return color
