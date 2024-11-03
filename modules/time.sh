show_time() {
  local index=$1
  local icon="$(get_tmux_option "@monokai-pro_time_icon" "")"
  local color="$(get_tmux_option "@monokai-pro_time_color" "$accent6")"
  local text="$(get_tmux_option "@monokai-pro_time_text" "%H:%M")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
