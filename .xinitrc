sh ~/.fehbg &
exec i3
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
setxkbmap us -variant colemak
