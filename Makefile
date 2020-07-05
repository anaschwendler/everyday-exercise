python_dependencies:
	python -m pip install --upgrade pip
	pip install -r python/requirements.txt

ruby_dependencies:
	sudo gem install bundler
	bundle install --gemfile=ruby/Gemfile
