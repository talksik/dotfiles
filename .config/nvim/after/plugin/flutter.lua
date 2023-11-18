-- run command `flutter sdk-path` to get the path and set to variable

local function execute_command(command)
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    return result
end

-- Run the "flutter sdk-path" command and capture its output
local flutterSdkPath = execute_command("flutter sdk-path")

local flutterExecutable = flutterSdkPath:match("^(.-)%s*$") .. "/bin/flutter"
local dartExecutable = flutterSdkPath:match("^(.-)%s*$") .. "/bin/dart"

-- concatenate
print("Flutter executable path: " .. flutterExecutable)

require("flutter-tools").setup {
  flutter_path = flutterExecutable,
} -- use defaults
