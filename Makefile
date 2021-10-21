# SPDX-License-Identifier: AGPL-3.0-or-later

ANT_TARGET = $(ANT_ARG_BUILDINFO) publish-local

all: build-ant

include build.mk

install:
	$(call mk_install_dir, /lib/ext/zm-gql)
	cp -f build/zm-gql*.jar $(INSTALL_DIR)/lib/ext/zm-gql/zmgql.jar

clean: clean-ant
