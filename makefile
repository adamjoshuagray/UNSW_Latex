READ = evince
NAME = Example
COMP = pdflatex


$(NAME).pdf: $(NAME).tex unswmaths.cls
	$(COMP) $^
	
read: $(NAME).pdf
	$(READ) $^ &

clean:
	rm -f *.aux *.log *~
spell: 
	ispell $(NAME).tex	
