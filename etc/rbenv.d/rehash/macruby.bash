shopt -s nullglob
macruby_bin=(${RBENV_ROOT}/versions/macruby-*/lib/bin/*)
shopt -s nullglob

cd "$SHIM_PATH"
make_shims ${macruby_bin[@]}
cd "$CUR_PATH"
