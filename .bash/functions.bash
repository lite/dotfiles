function top_ten(){
	history | awk '{print $2}' | sort | cut -d " " -f 1 | uniq -c | tail -n 10
}

function rm_ft(){
	find . -name "*.$1" | xargs echo 
}

function git_rmdir(){
	gs -s | grep "^\sD\s" | cut -c 4- | xargs git rm
}

# md website.com/{html,src,stuff}
function mcd() {   [ -n "$1" ] && mkdir -p "$@" && cd "$1";   }

# batch rename, example rename _def.rb .rb
function rename(){
	for file in *$1; do mv "$file" "${file/$1/$2}"; done
}
