#using template from Prof. Callahan's GitHub - will be changing this code up as we work on the project

export TEMPLATE_DIR = templates
export MARKDOWN_DIR = md
PTML_DIR = html_src
UTILS_DIR = utils
DOCKER_DIR = docker

INCS = $(TEMPLATE_DIR)/head.txt $(TEMPLATE_DIR)/logo.txt $(TEMPLATE_DIR)/menu.txt

FORCE:

tests: FORCE
	python3 -m unittest discover -p '*tests.py' -v
	python3 -m unittest discover -p 'Backyard/blog/tests.py' -v

prod: $(INCS) $(HTMLFILES) tests
	-git commit -a
	git push origin master

submods:
	git submodule foreach 'git pull origin master'

remove:
	rm *~
	rm .*swp
	rm $(PTML_DIR)/*~
	rm $(PTML_DIR)/.*swp

run:
	${PYTHON} 

dev_env:
	@echo "Installing developer requirements"
	pip3 install django
	#will fill in the actual install as we work on the project

clean: 
	touch $(PTML_DIR)/*.ptml; make local
