local dap = require('dap')
dap.adapters.dart = {
type = "executable",
command = "node",
args = {"~/.config/Dart-Code/out/dist/debug.js", "flutter"}
}
dap.configurations.dart = {
{
type = "dart",
request = "launch",
name = "Launch flutter",
dartSdkPath = os.getenv('HOME').."/fvm/versions/stable/bin/cache/dart-sdk/",
flutterSdkPath = os.getenv('HOME').."/fvm/versions/stable/",
program = "${workspaceFolder}/lib/main_staging.dart",
cwd = "${workspaceFolder}",
}
}


