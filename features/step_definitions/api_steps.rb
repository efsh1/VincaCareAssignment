Given /^I make an API request for city ID ([^"]*)$/ do |id|
  # creating request API url
  request = URI("https://api.openweathermap.org/data/2.5/weather?id=#{id}&appid=e3949ab69978029e84f35f84976f7f43")
  # send get request and store response in 'response' variable
  response = Net::HTTP.get_response(request)

  # print response code i.e 200
  log response.code

  # print response message i.e OK
  log response.message

  #save response body (actual response) to variable @data
  @data = response.body
end


Then /^I parse API response$/ do
  # parse response to hash and store in '@result'

  @result = JSON.parse(@data)
  # p @result
end


And /^I print "(.*)" name and humidity$/ do |city_name|
  # assert value from response with key 'name' should equal 'city_name'
  expect(@result["name"]).to eq city_name
  log "City " + @result["name"]
  #@result["main"]["humidity"] is a hash inside hash
  #@result["main"] will return hash map where 'humidity' is a key
  log "Humidity is " + (@result["main"]["humidity"]).to_s
end


Then(/^I should get response with key and values$/) do |table|
  #parse table from feature file and get values in variables 'key' and 'value'
  table.raw.each do |key, value|
    #assert that @result should have key and value which we are sending from feature file
    expect(@result[key]).to eq value
  end
end
