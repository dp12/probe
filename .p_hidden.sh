# Helper script for the "p" command to toggle showing hidden directories
depth=$(cat ~/.p_depth)
if [ -f ~/.p_hidden ]; then
  rm ~/.p_hidden
  (cd $1; find ./*/ -maxdepth $depth -type d -not -path '*/\.*')
else
  touch ~/.p_hidden
  depth=$(($depth+1))
  (cd $1; find . -maxdepth $depth -type d | sort)
fi
