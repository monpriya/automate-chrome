Feature: Create Task

@task @dev @sprint-24-dev @basic
Scenario: Create task with empty
	When visit page
	And fill task name with "ABCDEFG"
	And edit task name to ""
	And click confirm create task
	Then have no task "ABCDEFG" on task list page