install:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt

test:
	python3 -m pytest -vv --cov=hello --cov=greeting tests/
	python3 -m pytest --nbval pytest_notebook.ipynb

debug:
	python3 -m pytest -vv --pdb #Debugger is invoked

one-test:
	python3 -m pytest -vv tests/test_hello.py::test_more_bye
	 
format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all: install lint test format