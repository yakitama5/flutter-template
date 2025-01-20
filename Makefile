.PHONY: setup
setup:
	fvm dart pub global activate melos
	fvm dart pub global activate mason
	mason get
	mason list
	melos bs
