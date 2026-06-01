# Changelog

All notable changes to IronNode CLI are documented in this file.

## [2.4.1] — 2025-12-15

### Added
- Global install support via `npm install -g .` and `bin` field in package.json
- Programmatic API — `analyzer.js` can now be imported as a standalone module
- `CONTRIBUTING.md` with development guidelines
- CLI demo screenshots in README

### Changed
- Improved README with architecture docs, FAQ, and supported tokens table

### Fixed
- Minor formatting issues in risk bar display at edge scores

---

## [2.4.0] — 2025-11-20

### Added
- `block <number>` command — fetch specific block by number (previously only `block` for latest)
- `tokens <address>` command — check Jetton token holdings for USDT, NOT, DOGS, HMSTR
- Auto-failover RPC system — cycles through 3 TON RPC endpoints on failure
- Retry wrapper with exponential backoff for RPC calls

### Changed
- Improved risk scoring algorithm with address entropy analysis
- Better error messages for network failures

---

## [2.3.0] — 2025-10-15

### Added
- `iscontract <address>` command — detect smart contracts via bytecode inspection
- `blacklist <address>` command — check against IronNode threat database (128k+ entries)
- USD estimate display in `balance` command
- Activity level indicators in `txcount` command

### Changed
- Risk scoring now factors in token holdings as positive signal
- Improved wallet analysis with parallel RPC calls for faster scanning

---

## [2.2.0] — 2025-09-01

### Added
- `check <txhash>` command — full transaction details with receipt status
- `gas` command — current gas prices with slow/standard/fast/instant tiers
- ETH transfer fee estimation

### Changed
- Network command now shows base fee per gas
- Improved boot sequence with connection status

---

## [2.1.0] — 2025-08-10

### Added
- `risk <address>` command — quick risk assessment without full scan
- Visual risk bar with color-coded output (green/orange/yellow/red)
- Command autocomplete via Tab key
- Command history via Up/Down arrow keys

---

## [2.0.0] — 2025-07-01

### Added
- Interactive readline CLI interface (replacing one-shot commands)
- ASCII art banner on boot
- Categorized `help` command with grouped command reference
- `about` and `version` commands
- `clear` command to clear terminal

### Changed
- Complete rewrite from single-command to interactive terminal
- Modular architecture: `cli.js` (interface) + `analyzer.js` (engine)

---

## [1.0.0] — 2025-06-01

### Added
- Initial release
- `scan <address>` — basic wallet security scan
- `balance <address>` — ETH balance lookup
- `txcount <address>` — transaction count
- `network` — TON Mainnet status
- Connection to TON Mainnet via RPC simulation
- MIT License
