if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
export PATH=~/.local/bin:$PATH
# OPAM configuration
. /Users/zaidkhan/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
