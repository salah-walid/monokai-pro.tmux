show_branch(){
  local index=$1
  local icon="$(get_tmux_option "@monokai-pro_git_icon" "")"
  local color="$(get_tmux_option "@monokai-pro_git_color" "$accent2")"
  local text="#(gitmux -cfg ~/.config/tmux/gitmux.conf "#{pane_current_path}")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
