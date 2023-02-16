#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "Usage: bash flutter-create-feature-plugin.sh feature_name" >&1
  exit 1
fi

# Project packages/feature directory
FILE_PATH=$(dirname "$0")
cd "$FILE_PATH/../packages/feature" || exit

# Create feature plugin package
FEATURE_PLUGIN_NAME=$1
PASCAL_FEATURE_PLUGIN_NAME=$(echo "$FEATURE_PLUGIN_NAME" | awk -F_ '{for (i=1;i<=NF;i++) {printf "%s", toupper(substr($i,1,1)) tolower(substr($i,2))}}')

fvm flutter create --template=plugin -a kotlin -i swift --org=club.nito.feature "feature_$FEATURE_PLUGIN_NAME"

# Remove `feature_` prefix
mv "feature_$FEATURE_PLUGIN_NAME" "$FEATURE_PLUGIN_NAME"

# Remove generated example directory
rm -rf "$FEATURE_PLUGIN_NAME/example"

# Copy template example directory
cp -r "../../tools/template/example" "$FEATURE_PLUGIN_NAME"

cd "${FEATURE_PLUGIN_NAME}/example" || exit

# Rename package and imports
echo "Renaming packages to ${FEATURE_PLUGIN_NAME}"
find ./ -type f -iname "*.dart" -exec sed -i.bak "s/ExampleTemplate/Feature${PASCAL_FEATURE_PLUGIN_NAME}/g" {} \;
find ./ -type f \( -name "*.dart" -o -name "*.pbxproj" -o -name "*.xcconfig" \) -exec sed -i.bak "s/exampleTemplate/feature${PASCAL_FEATURE_PLUGIN_NAME}/g" {} \;
find ./ -type f \( -name "*.xcconfig" -o -name "*.pbxproj" -o -name "*.xcscheme" -o -name "*.dart" -o -name "*.lock" -o -name "*.plist" -o -name "*.md" -o -name "*.yaml" -o -name "*.txt" -o -name "*.cc" -o -name "*.gradle" -o -name "*.xml" -o -name "*.xml" -o -name "*.kt" -o -name "*.xml" -o -name "*.dart" -o -name "*.txt" -o -name "*.rc" -o -name "*.cpp" \) -exec sed -i.bak "s/example_template/feature_${FEATURE_PLUGIN_NAME}/g" {} \;
find ./ -type f \( -name "*.pbxproj" -o -name "*.xcconfig" \) -exec sed -i.bak "s/club.nito.exampleTemplate/club.nito.feature${PASCAL_FEATURE_PLUGIN_NAME}/g" {} \;

echo "Cleaning up"
find . -name "*.bak" -type f -delete

# directories
echo "Renaming directories to feature_${FEATURE_PLUGIN_NAME}_example"
find ./ -name "example_template_example" -type d  | sed "p;s/example_template_example/feature_${FEATURE_PLUGIN_NAME}_example/" |  tr '\n' '\0' | xargs -0 -n 2 mv