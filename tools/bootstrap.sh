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
##  Supabase
##
##############################################################################
echo ""
echo "🚀 Supabase: Start"
if type docker >/dev/null 2>&1; then
  if type supabase >/dev/null 2>&1; then
    if [ -z "$(docker container ls -q -f name="supabase_db_nito")" ]; then
      supabase login
      supabase link --project-ref hwxxihvcszfhaxlguajv
      supabase start
    else
      echo "⚠️ Supabase: Skip this step as the Supabase container has already been started."
    fi
    supabase gen types typescript --linked --schema public >supabase/functions/_shared/schema.ts
  else
    echo "⚠️ Supabase: The process has been skipped as the supabase command could not be found."
  fi
else
  echo "⚠️ Supabase: Docker is required for NITO development, but since it is not present, we will skip it."
fi
echo "🚀 Supabase: Finished"

##############################################################################
##
##  Finish
##
##############################################################################
echo ""
echo "🚀 Bootstrap finished"
