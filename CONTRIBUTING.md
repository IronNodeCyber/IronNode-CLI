# Contributing to IronNode CLI

Thank you for your interest in contributing to IronNode! This document provides guidelines for contributing to the project.

## 🚀 Getting Started

1. **Fork** the repository on GitHub
2. **Clone** your fork locally:
   ```bash
   git clone https://github.com/YOUR-USERNAME/IronNode-CLI.git
   cd IronNode-CLI
   ```
3. **Install** dependencies:
   ```bash
   npm install
   ```
4. **Create a branch** for your feature or fix:
   ```bash
   git checkout -b feature/my-feature
   ```

## 📋 Development Guidelines

### Code Style

- Use `'use strict'` at the top of all JavaScript files
- Use `const` for variables that don't change, `let` for those that do
- Use descriptive function names prefixed with `cmd` for CLI commands
- Use `chalk` for all colored terminal output
- All RPC calls should go through `analyzer.js`, not `cli.js`

### Project Structure

| File | Purpose |
| :--- | :--- |
| `cli.js` | CLI interface, command routing, output formatting |
| `analyzer.js` | Security engine, RPC calls, risk scoring |

### Adding a New Command

1. Define the command in the `COMMANDS` object in `cli.js`:
   ```javascript
   mycommand: {
     usage: 'mycommand <arg>',
     desc: 'Description of what it does',
     run: cmdMyCommand,
   },
   ```
2. Implement the command function:
   ```javascript
   async function cmdMyCommand(args) {
     // Your implementation
   }
   ```
3. Add it to the appropriate category in `cmdHelp()`
4. Update `README.md` command reference

### Adding a New Token

Edit the `TON_TOKENS` object in `analyzer.js`:
```javascript
TOKEN_SYMBOL: {
  address: 'EQ...',
  symbol: 'TOKEN_SYMBOL',
  decimals: 9,
},
```

## 🧪 Testing

Currently, IronNode does not have automated tests. Manual testing workflow:

```bash
# Start the CLI
npm start

# Test individual commands
help
network
balance EQCxE6mUtQWZZgHJdu7wcg5jUoxeLIJgO3Fp34v1R9412THy
scan EQCxE6mUtQWZZgHJdu7wcg5jUoxeLIJgO3Fp34v1R9412THy
```

If you add a new command, please test:
- ✅ Valid input produces correct output
- ✅ Missing arguments show usage hint
- ✅ Invalid input shows error message
- ✅ Network errors are handled gracefully

## 📝 Commit Messages

Use clear, descriptive commit messages:

```
feat: add new 'txhistory' command for transaction history lookup
fix: handle RPC timeout during scan command
docs: update README with new command reference
refactor: extract gas price formatting into helper function
```

## 🔀 Pull Request Process

1. Ensure your code follows the existing style
2. Test all commands work correctly
3. Update `README.md` if you added/changed commands
4. Update `CHANGELOG.md` with your changes
5. Submit a PR with a clear description of what changed and why

## 🐛 Reporting Bugs

Please open an [issue](https://github.com/IronNodeCyber/IronNode-CLI/issues) with:

- Node.js version (`node --version`)
- OS and version
- Steps to reproduce the bug
- Expected vs actual behavior
- Terminal output / error messages

## 📜 License

By contributing, you agree that your contributions will be licensed under the MIT License.
