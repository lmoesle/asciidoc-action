# asciidoc-action

> Compile asciidoc project using docker and make

## Usage

* Your project must be build with `make`
* In your Makefile you can use `asciidoctor` and `asciidoctor-pdf` 

```
name: Build asciidoctor document
on: [push]
jobs:
  build_asciidoctor:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2
      - name: Compile asciidoctor document
        uses: lmoesle/asciidoc-action@latest
      - name: Upload Pdf
        uses: actions/upload-artifact@v2
        with:
          name: upload pdf
          path: <your-file>.pdf
```

## Example Makefile

```
all: build

.PHONY: build
build:
	asciidoctor-pdf example.adoc
```
