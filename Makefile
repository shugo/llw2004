PDF	= ls-lR.pdf
PS	= ls-lR.ps

all: $(PDF)

check:
	cd tests; $(MAKE) check

clean:
	rm -f $(PS)
	rm -f *~
	cd tests; $(MAKE) clean

$(PDF): $(PS)
	ps2pdf $(PS) $(PDF)

$(PS): ls-lR.rb
	LANG=C a2ps -4 \
	            --line-numbers=1 \
		ls-lR.rb -o $(PS)
