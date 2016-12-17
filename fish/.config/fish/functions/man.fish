function man --description "colored man"
	set -x LESS_TERMCAP_md (printf "\e[1;32m")
	set -x LESS_TERMCAP_me (printf "\e[0m")

	env man $argv
end
