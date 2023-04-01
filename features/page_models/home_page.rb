class HomePage < PageActions

  def path
    "http://www.usps.com"
  end

  def login_button
    @browser.find_element(:id, "login-register-header")
  end

  def login_button_2
    @browser.find_element(:xpath, ("//*[@id='anchor-login']"))
  end

  def zip_code_look_up_link
    @browser.find_element(:id, "ctl00_ContentPlaceHolder1_HyperLink2")
  end


end