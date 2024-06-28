const { execFileSync } = require('node:child_process');

try {
  const stdout = execFileSync('zfs', ['program','demopool','test.lua'], {
    // Capture stdout and stderr from child process. Overrides the
    // default behavior of streaming child stderr to the parent stderr
    cwd: __dirname,
    //stdio: 'pipe',
    timeout: 2000,
    // Use utf8 encoding for stdio pipes
    encoding: 'utf8',
  });

  console.log(stdout.toString());
} catch (err) {
  if (err.code) {
    // Spawning child process failed
    console.error(err.code);
  } else {
    // Child was spawned but exited with non-zero exit code
    // Error contains any stdout and stderr from the child
    const { stdout, stderr } = err;

    console.error(stderr);
  }
}