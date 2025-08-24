all: shaders-format-check

shaders-format-check:
	find shaders/ -name "*.fsh" -o -name "*.vsh" | xargs clang-format --style=file --dry-run -Werror
