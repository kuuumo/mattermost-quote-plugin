NPM ?= $(shell command -v npm 2> /dev/null)
MANIFEST_FILE ?= plugin.json

# プラグインIDはplugin.jsonから取得
PLUGIN_ID ?= com.mattermost.quote-plugin
PLUGIN_VERSION ?= 1.0.0

# ビルドディレクトリ
BUNDLE_DIR ?= dist
WEBAPP_DIR ?= webapp

.PHONY: all dist clean webapp

all: clean webapp dist

# Webアプリのビルド
webapp:
	cd ${WEBAPP_DIR} && $(NPM) install && $(NPM) run build

# プラグインのパッケージング
dist:
	mkdir -p ${BUNDLE_DIR}/webapp
	cp ${MANIFEST_FILE} ${BUNDLE_DIR}/
	cp ${WEBAPP_DIR}/dist/main.js ${BUNDLE_DIR}/webapp/
	cd ${BUNDLE_DIR} && tar -czf ${PLUGIN_ID}-${PLUGIN_VERSION}.tar.gz *

# クリーンアップ
clean:
	rm -rf ${BUNDLE_DIR}
	rm -rf ${WEBAPP_DIR}/dist
	rm -rf ${WEBAPP_DIR}/node_modules
