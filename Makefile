# Convert to Tabs in configurations 
# Paste convenient template 

# Install pip, and then, install everything in requirements.txt
install: 
	pip install --upgrade pip &&\
		pip install -r requirements.txt

# Up to standards formatting
format: 
	black *.py

# Keeps only warning and error messages, then run the lint in hello.py file
lint: 
	pylint --disable=R,C,W0311 hello.py 

# call the pytest 3rd party lib, -vv giver verbose output, --cov for coverage, then, run test_hello.py 
test: 
	python -m pytest -vv --cov=hello test_hello.py 
	
# Do more than one thing at once
all: install lint test