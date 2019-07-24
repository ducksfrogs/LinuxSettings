sudo yum -y groupinstall "Development Tools"
sudo yum -y install readline-devel zlib-devel bzip2-devel sqlite-devel openssl-devel \
    libXext.x86_64 libSM.x86_64 libXrender.x86_64 gcc gcc-c++ libffi-devel python-devel bzip2

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshenv
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshenv

echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshenv
