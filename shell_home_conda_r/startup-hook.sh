#!/bin/bash
# run another setup like:
# apt update && apt install jq
echo "------------------------------------------"
echo "                                          "
echo "    Copy  .bashrc to root home            "
echo "                                          "
echo "------------------------------------------"
cat .bashrc_add >>/root/.bashrc

# TODO
# CHANGE THIS BEFORE RUN !!!!!!!
# YOU MUST CHANGE THIS EVERY TIME YOU UPDATE YOUR LOCAL VSCODE
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

