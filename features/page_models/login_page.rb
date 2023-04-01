class LoginPage < PageActions

  def login_field
    @browser.find_element(:id, "username")
  end

  def password_field
    @browser.find_element(:id, "password")
  end

  def signin_button
    @browser.find_element(:id, "btn-submit")
  end


end