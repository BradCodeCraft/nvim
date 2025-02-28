local config

if vim.loop.os_uname().sysname == "Linux" then
	config = {
		cmd = { "/usr/bin/jdtls" },
		root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
	}
end

-- TODO: update line 13 to correct jdtls directory
if vim.loop.os_uname().sysname == "Windows_NT" then
	config = {
		cmd = { "C:/Program Files/Common Files/Oracle/Java/javapath/java.exe" },
		root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
	}
end

require("jdtls").start_or_attach(config)
