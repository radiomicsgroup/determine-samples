#!/bin/bash
# run another setup like:
# apt update && apt install jq
echo "------------------------------------------"
echo "                                          "
echo "    Copy  .bashrc to root home            "
echo "                                          "
echo "------------------------------------------"
cat .bashrc_add >>/root/.bashrc

# Enter VS Code commit hash (Help -> About)
commit="CHANGE THIS"

[ "$commit" ] && (
    set -e
    if [ -d "$HOME/.vscode-server/bin/$commit" ] ; then
        echo "VS Code server commit:$commit already installed."        
    else
        curl -sL "https://update.code.visualstudio.com/commit:$commit/server-linux-x64/stable" | \
        tar -C "$HOME" -xz --transform "s#^vscode-server-linux-x64/#.vscode-server/bin/$commit/#"
        echo "VS Code server commit:$commit installed."
    fi


    $HOME/.vscode-server/bin/$commit/bin/code-server --install-extension ms-python.vscode-pylance
    $HOME/.vscode-server/bin/$commit/bin/code-server --install-extension ms-toolsai.vscode-jupyter-slideshow
    $HOME/.vscode-server/bin/$commit/bin/code-server --install-extension ms-toolsai.jupyter-renderers
    $HOME/.vscode-server/bin/$commit/bin/code-server --install-extension ms-toolsai.vscode-jupyter-cell-tags
    $HOME/.vscode-server/bin/$commit/bin/code-server --install-extension ms-toolsai.jupyter
    $HOME/.vscode-server/bin/$commit/bin/code-server --install-extension ms-python.isort
    $HOME/.vscode-server/bin/$commit/bin/code-server --install-extension ms-python.python
    $HOME/.vscode-server/bin/$commit/bin/code-server --install-extension Mikhail-Arkhipov.r
    $HOME/.vscode-server/bin/$commit/bin/code-server --install-extension REditorSupport.r

)

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
apt-get update &&  apt-get install -y dotnet-sdk-8.0 libfontconfig1-dev libfreetype-dev 
apt-get install -y libfreetype6 libfreetype6-dev libpng-dev libharfbuzz-dev libfribidi-dev 
apt-get install -y libtiff-dev libssl-dev libcurl4-openssl-dev unixodbc-dev libxml2-dev libmariadb-dev 
apt-get install -y libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev 
apt-get install -y libjpeg-dev liblapack-dev libblas-dev libssl-dev libcurl4-openssl-dev libxml2-dev
