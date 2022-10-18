PACKAGE_ROOT = .
PACKAGE_NAME = new_package

PLUGIN_ROOT = .
PLUGIN_NAME = new_plugin

.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-57s%s\n", $$1 $$3, $$2}'

.PHONY: prepare
prepare: # Prepare project development
	./scripts/prepare-git-commit-message-template.sh
	./scripts/prepare-fvm.sh
	./scripts/install-melos.sh
	./scripts/install-supabase.sh
	./scripts/prepare-supabase.sh

.PHONY: melos-bs
melos-bs: # Run melos bootstrap
	./scripts/melos-bs.sh

.PHONY: flutter-create-package
flutter-create-package: # Create a Flutter package
	./scripts/flutter-create-package.sh ${PACKAGE_NAME} ${PACKAGE_ROOT}

.PHONY: flutter-create-plugin
flutter-create-plugin: # Create a Flutter plugin
	./scripts/flutter-create-plugin.sh ${PLUGIN_NAME} ${PLUGIN_ROOT}
