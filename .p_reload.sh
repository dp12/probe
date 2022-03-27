# Helper script for the "p" command to increase the search depth
echo "$(($(cat ~/.p_depth) + 1))" > ~/.p_depth
(cd "$1"; find ./*/ -maxdepth "$(cat ~/.p_depth)" -type d -not -path '*/\.*')
