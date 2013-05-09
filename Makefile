NAME=callofthewild
zip: $(NAME).zip
$(NAME).zip: $(NAME).sty README.md
	mkdir -p $(NAME)
	cp README.md $(NAME)/README
	cp $(NAME).sty $(NAME)
	zip -Drq $(NAME).zip $(NAME)
	rm -rf $(NAME)
distclean:
	rm -f $(NAME).zip
