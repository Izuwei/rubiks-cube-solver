# Autor: Jakub Sadílek
# Login: xsadil07

all:
	@swipl -q -g start -o cube -c cube.pl

clean:
	@rm -rf cube
