
# Python with markdown installed with pip
PYTHON?=/usr/local/Cellar/python/2.7.9/bin/python
RENDER_SCRIPT=scripts/md/render.py

# to install compass do:
# sudo gem update --system
# sudo gem install compass
SCSS_COMP?=compass
THEMEDIR=theme

all: slides

slides:
	# save working directory & compile markdown
	cd $(dir $(RENDER_SCRIPT)) && $(PYTHON) $(notdir $(RENDER_SCRIPT))
	# compile scss
	$(SCSS_COMP) compile --sass-dir $(THEMEDIR)/scss --css-dir $(THEMEDIR)/css

clean:
	$(RM) index.html
	$(RM) $(THEMEDIR)/css/*
	$(RM) -r .sass-cache

depends:
	# compass installation
	sudo gem update --system
	sudo gem install compass
	# python stuffs
	pip install markdown
