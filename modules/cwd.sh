show_cwd() {
  local index=$1
  local icon="$(get_tmux_option "@monokai-pro_directory_icon" "")"
  local color="$(get_tmux_option "@monokai-pro_directory_color" "$accent5")"
  local text="#{b:pane_current_path}"
  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
