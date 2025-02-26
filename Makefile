QMDS = $(wildcard *.qmd) _quarto.yml
FIGS = kvasnickaSq.jpg
SITE = _site
TARGET = $(SITE)/index.html

all: $(TARGET)
$(TARGET): $(QMDS) $(FIGS)
	quarto render

open: $(TARGET)
	open $(TARGET)

clean:
	rm -rf $(SITE)
