When("visit page") do
  visit "http://localhost:3000/"
end

When("fill task name with {string}") do |name|
  expect(page).to have_css("#new-task-name", :visible => true)
	find("#new-task-name").set name
	sleep 5
end

When("edit task name to {string}") do |name|
  expect(page).to have_css("#new-task-name", :visible => true)
	find("#new-task-name").set name
	sleep 5
end

When("click confirm create task") do
  expect(page).to have_css("#submit-task-btn", :visible => true)
	find("#submit-task-btn").click
end

Then("have no task {string} on task list page") do |name|
  expect(page).to have_no_css(".task-name", :text => name)
end
