default: distro
distro:
	@mkdir -p extarrows && \
		cp extarrows.sty extarrows-test.tex README extarrows-test.pdf extarrows && \
		zip -9r extarrows.zip extarrows && \
		rm -rfv ./extarrows
