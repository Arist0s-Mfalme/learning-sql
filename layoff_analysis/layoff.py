from bs4 import BeautifulSoup
from selenium import webdriver
import time
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.chrome.options import Options
import re
import pandas as pd

options = Options()

options.add_argument("--headless=new")  # Runs Chrome without a user interface
# Overcomes sandbox security issues in Linux
options.add_argument("--no-sandbox")
options.add_argument("--disable-dev-shm-usage")
driver = webdriver.Chrome(options=options)
driver.get(
    "https://airtable.com/app1PaujS9zxVGUZ4/shroKsHx3SdYYOzeh/tblleV7Pnb6AcPCYL?viewControls=on")
driver.maximize_window()
time.sleep(10)
print("successfully executed")
