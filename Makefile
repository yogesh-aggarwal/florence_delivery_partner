.PHONY: start, dev, setup, clean, build_apk, build_bundle, build_ios

start:
	@flutter run

dev: start

setup:
	@flutter pub get

clean:
	@flutter clean

build_apk:
	@flutter build apk --release

build_bundle:
	@flutter build appbundle --release

build_ios:
	@flutter build ios --release
