all: shaders-format-check

shaders-format-check:
	find shaders/ -name "*.glsl" | xargs clang-format --style=file --dry-run -Werror
