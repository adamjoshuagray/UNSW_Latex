READ = evince
NAME_1 = Example
NAME_2 = Example_Shortcuts
COMP = pdflatex


$(NAME_1).pdf: $(NAME_1).tex $(NAME_2).pdf unswmaths.cls
	$(COMP) $^	

$(NAME_2).pdf: $(NAME_2).tex
	$(COMP) $^

read: $(NAME_1).pdf
	$(READ) $^ &

read_shortcuts: $(NAME_2).pdf
	$(READ) $^ &

clean:
	rm -f *.aux *.log *~ *.pdf
spell: 
	ispell $(NAME).tex	
