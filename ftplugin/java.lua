local config = {
	cmd = { "/usr/bin/jdtls" }, -- Change this to your JDK path
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
require("jdtls").start_or_attach(config)
