function fish_prompt
	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	switch $USER
		case root
			if not set -q __fish_prompt_cwd
				if set -q fish_color_cwd_root
					set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
				else
					set -g __fish_prompt_cwd (set_color $fish_color_cwd)
				end
			end

		case '*'
			if not set -q __fish_prompt_cwd
				set -g __fish_prompt_cwd (set_color $fish_color_cwd)
			end
	end

	echo -n -s 'λ ' "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" ' ▸ '
end
