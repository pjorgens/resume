all: cleanall light dark cv-light cv-dark html clean

# Light theme
light:
	rm -rf ./aux
	rm -f ./resume.pdf
	rm -f embed-resume.html
	rm -f resume.html
	mkdir -p ./aux
	mkdir -p ./out
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume.tex
	mv ./aux/resume.pdf ./out/resume-jorgensen-pierce.pdf

# Dark theme
dark:
	rm -rf ./aux
	rm -f ./resume-dark.pdf
	rm -f embed-resume-dark.html
	rm -f resume-dark.html
	mkdir -p ./aux
	mkdir -p ./out
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume-dark.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume-dark.tex
	mv ./aux/resume-dark.pdf ./out/resume-jorgensen-pierce-dark.pdf

# cover letter
cv-light:
	rm -rf ./aux
	rm -f ./cv.pdf
	rm -f embed-cv.html
	rm -f cv.html
	mkdir -p ./aux
	mkdir -p ./out
	latexmk -xelatex -shell-escape -output-directory ./aux ./cv.tex \
		|| xelatex --shell-escape -output-directory ./aux ./cv.tex
	mv ./aux/cv.pdf ./out/cv-jorgensen-pierce.pdf

# cover letter
cv-dark:
	rm -rf ./aux
	rm -f ./cv-dark.pdf
	rm -f embed-cv-dark.html
	rm -f cv-dark.html
	mkdir -p ./aux
	mkdir -p ./out
	latexmk -xelatex -shell-escape -output-directory ./aux ./cv-dark.tex \
		|| xelatex --shell-escape -output-directory ./aux ./cv-dark.tex
	mv ./aux/cv-dark.pdf ./out/cv-jorgensen-pierce-dark.pdf

# index.html
define INDEX
<!DOCTYPE html>
<html>
  <head>
    <title>Resume - Pierce Jorgensen</title>
  </head>
  <body style="background-color:rgb(40, 40, 40);">
	  <center>
	  <object data="./resume-jorgensen-pierce.pdf" type="application/pdf" width="70%" height="1500px">
      </object>
	  <object data="./resume-jorgensen-pierce-dark.pdf" type="application/pdf" width="70%" height="1500px">
      </object>
	  </center>
  </body>
</html>
endef
export INDEX

# Generate html files
html:
	mkdir -p ./out
	@echo "$$INDEX" > ./out/index.html

clean:
	@rm -rf ./aux

cleanall:
	@rm -rf ./aux
	@rm -rf ./out
