#! /usr/bin/env bash

# -----------------------------------------------------------------
# Author : Jiaobuzuji@163.com
# Abstract : vim bootstrap
# -----------------------------------------------------------------


# BASIC SETUP FUNCTIONS {{{1
# -----------------------------------------------------------------
function msg() {
    printf '%b\n' "$1" >&2
}

function success() {
    if [ "$ret" -eq '0' ]; then
        msg "\33[32m[✔]\33[0m ${1}${2}"
    fi
}

function error() {
    msg "\33[31m[✘]\33[0m ${1}${2}"
    exit 1
}

function debug() {
    if [ "$ret" -gt '1' ]; then
        msg "An error occurred in function \"${FUNCNAME[$i+1]}\" on line ${BASH_LINENO[$i+1]}, we're sorry for that."
    fi
}

function lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
    ret="$?"
    debug
}

# repo_sync (repo_path, repo_uri, repo_branch, repo_name)
function repo_sync() {
  local repo_path="$1"
  local repo_uri="$2"
  local repo_branch="$3"
  local repo_name="$4"

  msg "Trying to clone or update '$repo_name' repository."

  if [ ! -e "$repo_path/$repo_name" ]; then
    git clone --depth 1 -b "$repo_branch" "$repo_uri" "$repo_path/$repo_name"
    # git clone "$repo_uri" "$repo_path/$repo_name"
    ret="$?"
    success "Successfully cloned '$repo_name'."
  else
    cd "$repo_path/$repo_name" && git pull origin "$repo_branch"
    ret="$?"
    success "Successfully updated '$repo_name'"
  fi
  msg ""
  cd ${CURR_PATH}
  debug
}


# MAIN() {{{1
# -----------------------------------------------------------------
[ -z "${REPO_PATH}" ] && REPO_PATH="${HOME}/repos"
[ -z "${CURR_PATH}" ] && CURR_PATH=$(pwd)
[ -z "${GITSRVURL}" ] && GITSRVURL="github.com.cnpmjs.org" # mirror0: github.com.cnpmjs.org   mirror1: gitee.com(not work)

# Jiaobuzuji vimrc
repo_sync  "${REPO_PATH}" \
           "https://${GITSRVURL}/jiaobuzuji/vimrc" \
           "master" \
           "vimrc.git"

rm -f "${HOME}/.vim" # remove link
lnif "${REPO_PATH}/vimrc.git"   "${HOME}/.vim" # relink
mkdir -p "${HOME}/.vim/undodir"

# Shougo dein
# bash -c "$(curl -fsSL https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh)" "${HOME}/.vim/bundle"
repo_sync  "${HOME}/.vim/bundle/repos/${GITSRVURL}/Shougo" \
           "https://${GITSRVURL}/Shougo/dein.vim" \
           "master" \
           "dein.vim"

# # junegunn vim-plug
# curl -fLo ${HOME}/.vim/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# # K-takata minpac
# git clone --depth=1 https://github.com/ ~/.vim//
# repo_sync  "${HOME}/.vim/pack/minpac/opt" \
#            "https://${GITSRVURL}/k-takata/minpac" \
#            "master" \
#            "minpac"

# # YouCompleteMe
# repo_sync  "${HOME}/.vim/bundle" \
#             "https://${GITSRVURL}/Valloric/YouCompleteMe/" \
#             "master" \
#             "YouCompleteMe"
# cd  ${HOME}/.vim/bundle/YouCompleteMe
# git submodule update --init --recursive && python3 ./install.py --clang-completer || return 1 # TODO

# -----------------------------------------------------------------
# vim:fdm=marker
