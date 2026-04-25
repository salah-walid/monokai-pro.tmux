show_session(){
  local background="$accent2"
  local color="$dark2"

  # Keep #[...] outside #{?...} to avoid tmux 3.6 comma-parsing bug inside conditionals
  local left_sep="#[fg=$background,bg=$dark2,nobold,nounderscore,noitalics]#{?#{m/r:^(popup|claude)_,#S},,$status_left_separator}"
  local text="#[fg=$color,bg=$background,bold]#{?#{m/r:^(popup|claude)_,#S},, #S }#[default]"
  local right_sep="#[fg=$background,bg=$dark2,nobold,nounderscore,noitalics]#{?#{m/r:^(popup|claude)_,#S},,$status_right_separator}"
  echo "$left_sep$text$right_sep"
}
