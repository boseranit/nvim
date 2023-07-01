copy colour scheme into Neovim\share\nvim\runtime\pack\dist\opt

copy everything apart from colour scheme into AppData\Local\nvim
modify path directories in init.vim as needed
Install plug using command on github page
:PlugInstall
:PlugUpdate [name of plugin] for each plugin
:UpdateRemotePlugins
Install inconsolata fonts and others
do :checkhealth to see what needs to be done

pip install neovim-remote and pynvim
may need latexmk, perl
ensure path to sumatrapdf.exe is added to environment variables
Run "cpanm -n Neovim::Ext" to get perl working with nvim
