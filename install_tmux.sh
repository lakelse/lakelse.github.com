declare -A c=( \
      [curl]="/usr/bin/curl --remote-name --silent" \
 [tmux_conf]="https://raw.githubusercontent.com/lakelse/lakelse.github.com/master/.tmux.conf" \
)

echo "alias tmux=\"TERM=screen-256color tmux\"" >> ~/.bashrc

# complete installing tmux
${c[curl]} ${c[tmux_conf]}
