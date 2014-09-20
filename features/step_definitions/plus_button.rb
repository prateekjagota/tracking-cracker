

Then(/^Session ([\w\d]+). I am on ([\w ]+)$/) do |session,text|
  set_default_device($session[session])
  sleep 5
  if text == "Car Finder Screen"
    check_element_exists("* text:'Car Finder'")
  else
    fail("Text Not Found")
  end
end

Then(/^Session ([\w\d]+). Verify the ([\w ]+)$/) do |session,optionName|
  set_default_device($session[session])
  sleep 5
  if optionName == "plus button"
    check_element_exists("* id:'plusButton'")
  elsif optionName == "search button"
    check_element_exists("* id:'searchButton'")
  elsif optionName == "options bar"
    check_element_exists("* id:'filterButton'")
  elsif optionName == "Search Cars banner"
    check_element_exists("* id:'search_src_text' * contentDescription:'Search query'")
  else
    fail("Text Not Found")
  end
end

Then(/^Session ([\w\d]+). Enter CarName as ([\w ]+)$/) do |session,enterText|
  set_default_device($session[session])
  sleep 5
  query("* id:'search_src_text'", {:setText => ""+enterText.to_s+""})
  sleep 10
  touch("* id:'suggestion_textview' * text:'"+enterText.to_s+"'")
end

Then(/^Session ([\w\d]+). Verify text in Car Details as ([\w ]+)$/) do |session,textVerify|
  set_default_device($session[session])
  sleep 5
  begin
  check_element_exists("* text:'"+textVerify.to_s+"'")
  rescue
    fail("Text not Found")
   end
end