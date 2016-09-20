from fabric.api import local


def install():
    _prepare_os()
    _install_dependencies()
    _setup_vim()


def _prepare_os():
    local('sudo apt-get install vim')
    local('mkdir -p ~/.vim/bundle')
    local('git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim')


def _install_dependencies():
    local('cp vimrc ~/.vimrc')
    local('sudo pip install flake8')
    local('sudo pip install jedi')
    local('sudo pip install powerline-status')


def _setup_vim():
    local('vim +PluginInstall +qall')
