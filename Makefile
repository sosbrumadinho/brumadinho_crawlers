clean:
	@find . -name "*.pyc" | xargs rm -rf
	@find . -name "*.pyo" | xargs rm -rf
	@find . -name "__pycache__" -type d | xargs rm -rf

install:
	pip install -r requirements.txt

install-dev: install
	pip install -r requirements-dev.txt

crawl:
	python crawlers/missing_people_vale.py

flake:
	flake8 .

lint: flake
