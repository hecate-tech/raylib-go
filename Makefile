PACKAGES= raylib raygui raymath easings physics rres

GO?= go

all: packages

packages:
	@for pkg in ${PACKAGES}; do \
		echo "Building package github.com/hecate-tech/raylib-go/$$pkg..."; \
		${GO} build github.com/hecate-tech/raylib-go/$$pkg || exit 1; \
	done
