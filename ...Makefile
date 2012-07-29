# This file is used by: http://github.com/ingydotnet/....git
install: update

SUPER_SPECIAL_CODE = keysym Alt_R = Multi_key
update:
	@if ! xmodmap -p | grep Multi_key > /dev/null; then \
	    echo "Looks like you don't have Multi_key mapped. Fixing that…"; \
	    sleep 2; \
	    grep "$(SUPER_SPECIAL_CODE)" ~/.Xmodmap >/dev/null || \
		echo $(SUPER_SPECIAL_CODE) >> ~/.Xmodmap \
	    xmodmap -e "$(SUPER_SPECIAL_CODE)"; \
	fi
