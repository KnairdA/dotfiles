function music --description "ncmpcpp launcher"
	ps -e | grep mpd > /dev/null

	if test $status -eq 1
		mpd ~/.config/mpd/mpd.conf
	end

	ncmpcpp
end
