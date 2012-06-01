
if [ "$(rbenv-version-name | sed 's/-.*$//')" = "macruby" ];then
  # TODO - check if GEM_HOME has been set by rbenv-gemset
  unset GEM_HOME GEM_PATH
  path=$(rbenv-prefix)/lib
  GEM_HOME="$path"
  GEM_PATH="$path"
  export GEM_HOME GEM_PATH
fi
