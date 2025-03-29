return {
	cmd = { "clangd", "--header-insertion=never" },
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
	root_marks = {
		".clangd",
		".clang-tidy",
		".clang-format",
		"compile_commands.json",
		"compile_flags.txt",
		"configure.ac",
	},
}
