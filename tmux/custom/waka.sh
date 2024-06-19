# If this module depends on an external Tmux plugin, say so in a comment.
# E.g.: Requires https://github.com/aaronpowell/tmux-weather

get_api_key() {
  # local api_key=$(grep -E "api_key\s*=" ~/.wakatime.cfg | sed -E 's/api_key\s*=\s*//' | tr -d '[:space:]')
  local api_key='d2FrYV9lZGQxY2NmOS1jZjhmLTRiMjAtYTNmNC1mNDJmZjg4ZmE5M2I='
  echo "$api_key"
}

get_wakatime_data() {
  curl -H "Authorization: Basic $(get_api_key)" -s "https://wakatime.com/api/v1/users/current/status_bar/today"
}

get_coding_time() {
  local coding_time=$(get_wakatime_data | jq -r '.data.grand_total.text') || 'no time today'
  echo "$coding_time"
}

show_waka() { # This function name must match the module name!
  local index icon color text module

  index=$1 # This variable is used internally by the module loader in order to know the position of this module
  icon="$(echo -e '\uf017')"
  color="$( get_tmux_option "@catppuccin_waka_color" "$thm_orange" )"
  text="$( get_coding_time )"

  module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

