if [ "$(rbenv-version-name | sed 's/-.*$//')" = "macruby" ];then
  command="$(rbenv-prefix)/lib/bin/$RBENV_COMMAND"
  if [ -x "$command" ]; then
    RBENV_COMMAND_PATH="$command"
    break
  fi
fi
