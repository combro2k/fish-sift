function sift --description "Sift grep on steroids"
  if test ! -x $HOME/bin/sift
    printf 'Installing sift into ~/bin/sift...\n' 1>&2
    curl --silent -fL https://sift-tool.org/downloads/sift/sift_0.9.0_linux_amd64.tar.gz | tar zx --strip-components=1 -C ~/bin -- sift_0.9.0_linux_amd64/sift
  end

  eval $HOME/bin/sift "$argv"
end
