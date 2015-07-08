# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#

reset_db() {
	powder stop
	spring stop
	bundle exec rake db:drop:all db:create:all db:migrate
	bundle exec rake db:migrate RAILS_ENV=test
	powder start
}

run_test() {
  COVERAGE=true rspec &&
  rubocop -f fu --auto-correct
}
