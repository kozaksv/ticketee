
Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to page_name
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in arg1, {:with => arg2}
end

When /^I press "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^I should see "([^"]*)"$/ do |text|
  assert page.has_content?(text)
end
