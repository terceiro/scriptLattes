all: index.html
	./scriptLattes les-en.txt
	./scriptLattes les-pt.txt

index.html: index.rst
	rst2html $< $@

publish: all
	cp index.html ~/public_html/
	cp -r output/en ~/public_html/
	cp -r output/pt ~/public_html/

clean:
	rm -rf output/
	rm -rf index.html
