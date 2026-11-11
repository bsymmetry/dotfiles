# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

coin() {
	rand=$RANDOM

	if (( rand > 2**14 )); then
		echo "heads"
	else
		echo "tails"
	fi
}

np() {
	if openssl no-rand >/dev/null; then
		echo "OpenSSL rand command not available"
		return 1
	elif openssl no-passwd >/dev/null; then
		echo "OpenSSL passwd command not available"
		return 1
	fi
	
	openssl rand -hex 64 | openssl passwd -stdin -5 | sed 's/\$5\$//; s/\$//' | tail -c "$1"
}

dict() {
	curl dict://dict.org/d:"$1"
}
