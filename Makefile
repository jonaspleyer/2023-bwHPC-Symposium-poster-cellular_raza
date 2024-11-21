NAME:=Pub_bwHPC_Symposium_2023.Jonas-Pleyer-Version-01

main:
	latexmk -pdf $(NAME).tex

clean:
	rm -f $(NAME).aux
	rm -f $(NAME).fdb_latexmk
	rm -f $(NAME).fls
	rm -f $(NAME).log
	rm -f $(NAME).pdf

fresh: clean main
