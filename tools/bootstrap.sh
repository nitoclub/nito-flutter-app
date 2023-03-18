#! /bin/bash

echo ""
echo "  ##  ##    ####    ######    #### "
echo "  ### ##     ##       ##     ##  ## "
echo "  ######     ##       ##     ##  ## "
echo "  ######     ##       ##     ##  ## "
echo "  ## ###     ##       ##     ##  ## "
echo "  ##  ##     ##       ##     ##  ## "
echo "  ##  ##    ####      ##      #### "
echo ""

# Project root directory
FILE_PATH=$(dirname "$0")
cd "$FILE_PATH/../" || exit

echo "🚀 Bootstrap start"
echo "🚀 Working directory: $(pwd)"

##############################################################################
##
##  Git commit message
##
##############################################################################
echo ""
echo "🚀 Git commit message: Start"
if type git >/dev/null 2>&1; then
  git config commit.template tools/git/message
  echo "🎉 Git commit message: git config commit.template is $(pwd)/$(git config commit.template)"
  echo "✅ Git commit message: Success"
else
  echo "⚠️ Git commit message: Skip the git command as it could not be found."
fi
echo "🚀 Git commit message: Finished"

##############################################################################
##
##  Version Management Tools
##
##############################################################################
echo ""
echo "🚀 Version Management: Start"
if type fvm >/dev/null 2>&1; then
  fvm install
else
  echo "⚠️ Version Management: The process has been skipped as the fvm command could not be found."
fi
echo "🚀 Version Management: Finished"

##############################################################################
##
##  Melos
##
##############################################################################
echo ""
echo "🚀 Melos: Start"

# FIXME: ここで PATH を通さなくても実行できるようにしたい
export PATH="$PATH":"$HOME/.pub-cache/bin"

if type melos >/dev/null 2>&1; then
  echo "🔒️ Melos: Bootstrap."
  melos bs
else
  echo "⚠️ Melos: The process has been skipped as the melos command could not be found."
fi

echo "🚀 Melos: Finished"

##############################################################################
##
##  Finish
##
##############################################################################
echo ""
echo "🚀 Bootstrap finished"
