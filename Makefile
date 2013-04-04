mashed-together:
	echo 'include "%L" # system mapping, e.g.: /usr/share/X11/locale/en_US.UTF-8/Compose' > .XCompose
	for n in xcompose.d/*; do cat $$n >> .XCompose; done
	echo 'include "%H/.localXCompose"' >> .XCompose
