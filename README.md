# ES-lab
Small sandbox project for learning a LaTeX project with 
the help of a GIT repository.

 - main.tex      = general file to include all seperate chapters
 - \<title>.tex   = seperate chapter files
 - biblio.bib = bibtex file for generating bibliography 

## Making PDF
Made a Makefile with the following options
 - all:
   Generates the latex files
 - pdf:
   Generates a PDF, and deletes all temporary files
 - clean:
   Deletes the resulting PDF and all temporary files
