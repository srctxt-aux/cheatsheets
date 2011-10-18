all:
	./scripts/generate.sh

clean:
	rm -rf html
	rm -f *.html

golive:
	./utils/deploylive.sh

doc:
	rm -f index.html
	md2html README.txt > index.html

