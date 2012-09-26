all: a.once

%.once:
	latex report

clean:
	rm -f report.toc report.aux report.log report.dvi report.pdf

pdf:
	dvipdf report.dvi

release: clean a.once b.once c.once

