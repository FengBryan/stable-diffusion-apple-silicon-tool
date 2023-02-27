.install:
	git submodule update  --recursive
	zsh ./install.sh $(name)

run_with_init: .install
	zsh run.sh $(name)

run:
	zsh run.sh $(name)


