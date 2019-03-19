Given("A text term string is inputted") do
  @google.home_page.search_txt.wait_until_present.set("cucumber")
end

When("The search button is clicked") do
  @google.home_page.search_btn.wait_until_present.click
end

Then("A list of search results is displayed") do
  expect(@google.home_page.search_results.first.link.text.squish).to eql "Cucumber https://cucumber.io/"
end