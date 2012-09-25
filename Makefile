all: a.once

%.once:
	pdflatex report

clean:
	rm -f report.toc report.aux report.log

release: clean a.once b.once c.once

