NAME:=Pub_bwHPC_Symposium_2023.Jonas-Pleyer-Version-01

main:
	latexmk -pdf $(NAME).tex

clean_partial:
	rm -f $(NAME).aux
	rm -f $(NAME).fdb_latexmk
	rm -f $(NAME).fls
	rm -f $(NAME).log
	rm -f $(NAME).bbl
	rm -f $(NAME).blg
	rm -f $(NAME).out

clean: clean_partial
	rm -f $(NAME).pdf

fresh: clean main

zip: fresh
	$(MAKE) clean_partial
	zip archive.zip -r *
