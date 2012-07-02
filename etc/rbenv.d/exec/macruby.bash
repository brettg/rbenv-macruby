
if [ "$(rbenv-version-name | sed 's/-.*$//')" = "macruby" ];then
  # If rbenv-gemset has set the gem home, let it be
  if [ ${GEM_HOME/gemset/} = ${GEM_HOME} ];then
    unset GEM_HOME GEM_PATH
    path=$(rbenv-prefix)/lib
    GEM_HOME="$path"
    GEM_PATH="$path"
    export GEM_HOME GEM_PATH
  fi
fi
