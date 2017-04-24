
.DEFAULT_GOAL := prove

Gemfile.lock: Gemfile
	bundle check || bundle install

prove: Gemfile.lock
	bundle exec dotenv prove

build: ## Build docker image
	docker build .