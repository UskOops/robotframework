from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

driver = webdriver.Chrome('C:/Windows/chromedriver.exe') 
driver.get("https://training-wheels-protocol.herokuapp.com/")
assert "Training Wheels Protocol" in driver.title
elem = driver.find_element(By.NAME, "q")
elem.clear()
elem.send_keys("")
elem.send_keys(Keys.RETURN)
assert "No results found." not in driver.page_source
driver.close()
