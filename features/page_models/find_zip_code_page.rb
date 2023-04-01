class FindZipCodePage < PageActions

  def path
    "https://tools.usps.com/zip-code-lookup.htm?byaddress"
  end

  def address_text_field
    @browser.find_element(:id, "tAddress")
  end

  def city_text_field
    @browser.find_element(:id, "tCity")
  end

  def states_dropdown
    @browser.find_element(:id, "tState")
  end

  def select_state state
    states_dropdown.click
    state_list = @browser.find_element(:id, "tState").find_elements(:tag_name, "option")
    state_list.each do |element|
      if element.text == state
        element.click
        break
      end
    end
  end

  def find_zip_code_button
    @browser.find_element(:id, "zip-by-address")
  end

  def table_result
    @browser.find_element(:id, "zipByAddressDiv").find_elements(:tag_name, "li")
  end


end