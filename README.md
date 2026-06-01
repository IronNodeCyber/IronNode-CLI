# 🛡️ IronNode CLI — AI-Powered Crypto Wallet Security Agent

<div align="center">
  <img src="Asset/logo.png" width="140" height="140" alt="IronNode Logo">

  <h3>Interactive CLI Security Scanner & Blockchain Diagnostics for TON Network</h3>

  <p>
    <b>Real-time wallet security analysis, risk scoring, and on-chain diagnostics<br>powered by live TON Mainnet RPC data.</b>
  </p>

  <p>
    <img src="https://img.shields.io/badge/version-2.4.1-blue?style=flat-square" alt="Version">
    <img src="https://img.shields.io/badge/Node.js-≥16.0-339933?style=flat-square&logo=node.js&logoColor=white" alt="Node.js">
    <img src="https://img.shields.io/badge/TON_Network-Mainnet-0098EA?style=flat-square&logo=telegram&logoColor=white" alt="TON Network">
    <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="MIT License">
    <img src="https://img.shields.io/badge/Platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey?style=flat-square" alt="Platform">
  </p>
</div>

---

## 🖥️ CLI Preview

### Boot & Connection Sequence
```
██╗██████╗  ██████╗ ███╗   ██╗███╗   ██╗ ██████╗ ██████╗ ███████╗
██║██╔══██╗██╔═══██╗████╗  ██║████╗  ██║██╔═══██╗██╔══██╗██╔════╝
██║██████╔╝██║   ██║██╔██╗ ██║██╔██╗ ██║██║   ██║██║  ██║█████╗  
██║██╔══██╗██║   ██║██║╚██╗██║██║╚██╗██║██║   ██║██║  ██║██╔══╝  
██║██║  ██║╚██████╔╝██║ ╚████║██║ ╚████║╚██████╔╝██████╔╝███████╗
╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝

  IronNode AI Security Terminal v2.4.1
  AI-Powered Crypto Wallet Security Agent for TON Network
  ────────────────────────────────────────────────────────────────
  ✓ Connected to TON Mainnet (Workchain 0)
  ✓ AI Risk Engine loaded — 47 detection models active
  ✓ Threat database synced — 132,481 entries

ironnode@ton:~$
```

### Wallet Security Scan (`scan <address>`)
```
ironnode@ton:~$ scan EQCxE6mUtQWZZgHJdu7wcg5jUoxeLIJgO3Fp34v1R9412THy

  🔍 Checking threat databases...
  📊 Fetching account status and balances...
  ⚙️ Analyzing transaction patterns...
  🧠 Running AI risk assessment models...

  🛡️ Security Analysis Report
  ────────────────────────────────────────────────────────────────
  Address:      EQCxE6mUtQWZZgHJdu7wcg5jUoxeLIJgO3Fp34v1R9412THy
  Account Type: Wallet (EOA)
  Risk Score:   [■■■■■░░░░░░░░░░░░░░░] 25/100 (LOW RISK)
  ────────────────────────────────────────────────────────────────
  
  📊 Risk Metrics:
  • Local Blacklist:   Clean (No matches found)
  • Activity Level:    High (418 transactions)
  • Balance:           125.42 TON (~$902.94 USD)
  • Jetton Count:      3 active tokens (USDT, NOT, DOGS)
```

---

## ✨ Features

| Category | Feature | Description |
| :--- | :--- | :--- |
| 🔍 **Security** | AI Risk Scoring | Generates 0–100 risk scores using 47+ detection signals |
| 🔍 **Security** | Threat Database | Cross-references addresses against 128,000+ known malicious entries |
| 🔍 **Security** | Contract Detection | Identifies DApps and token contracts vs standard wallet accounts |
| 💰 **Wallet** | Balance & Tokens | Real TON balance and Jetton holdings (USDT, NOT, DOGS, HMSTR) |
| 🌐 **Network** | Live Data | Real-time block info, network fees, and transaction lookups |
| ⚡ **Infra** | Auto-Failover RPC | Automatically cycles through multiple TON RPC endpoints |
| 🎨 **UX** | Beautiful CLI | Colored output, ASCII art, autocomplete, and command history |

---

## 🚀 Quick Start

### Prerequisites

- [Node.js](https://nodejs.org/) v16.0.0 or higher
- npm (included with Node.js)

### Installation

```bash
# Clone the repository
git clone https://github.com/IronNodeCyber/IronNode-CLI.git
cd IronNode-CLI

# Install dependencies
npm install

# Start the CLI
npm start
```

### Global Install (optional)

```bash
# Install globally to use 'ironnode' command anywhere
npm install -g .

# Then run from any directory
ironnode
```

### Windows Quick Launch

Double-click **`start-cli.bat`** — it will automatically install dependencies and launch the terminal.

---

## ⚙️ Command Reference

### 🔍 Security Analysis

| Command | Syntax | Description |
| :--- | :--- | :--- |
| **`scan`** | `scan <address>` | Full AI security scan with detailed report |
| **`risk`** | `risk <address>` | Quick risk assessment score (0-100) with visual bar |
| **`blacklist`** | `blacklist <address>` | Check against threat intelligence database |

### 💼 Wallet Info

| Command | Syntax | Description |
| :--- | :--- | :--- |
| **`balance`** | `balance <address>` | TON balance (with USD estimate) |
| **`txcount`** | `txcount <address>` | Transaction count and activity level |
| **`tokens`** | `tokens <address>` | Jetton token holdings (USDT, NOT, DOGS, HMSTR) |
| **`iscontract`** | `iscontract <address>` | Check if address is contract (DApp/Jetton) or wallet |

### 🌐 Network

| Command | Syntax | Description |
| :--- | :--- | :--- |
| **`network`** | `network` | TON network status, block info, fee rates |
| **`block`** | `block [number]` | Latest block or specific block by number |
| **`gas`** | `gas` | Current network fees (slow/standard/fast/instant) |
| **`check`** | `check <txhash>` | Transaction details and status by hash |

### ⚙️ Utility

| Command | Syntax | Description |
| :--- | :--- | :--- |
| **`help`** | `help [command]` | Show available commands |
| **`about`** | `about` | About IronNode |
| **`version`** | `version` | Version information |
| **`clear`** | `clear` | Clear terminal screen |
| **`exit`** | `exit` | Exit the application |

---

## 🏗️ Architecture

IronNode CLI is built with a clean 2-module architecture:

```
┌─────────────────────────────────────────────────┐
│                   cli.js                         │
│  ┌───────────┐  ┌──────────┐  ┌──────────────┐ │
│  │ Readline   │  │ Command  │  │ Output       │ │
│  │ Interface  │→ │ Router   │→ │ Formatter    │ │
│  └───────────┘  └──────────┘  └──────────────┘ │
│                      ↓                           │
│  ┌───────────────────────────────────────────┐  │
│  │             analyzer.js                    │  │
│  │  ┌─────────┐  ┌──────────┐  ┌──────────┐ │  │
│  │  │ RPC      │  │ Risk     │  │ Threat   │ │  │
│  │  │ Provider │  │ Engine   │  │ Database │ │  │
│  │  │ (ethers) │  │ (scoring)│  │ (local)  │ │  │
│  │  └─────────┘  └──────────┘  └──────────┘ │  │
│  └───────────────────────────────────────────┘  │
│                      ↓                           │
│        TON Mainnet RPC (Workchain: 0)           │
└─────────────────────────────────────────────────┘
```

| Module | Responsibility |
| :--- | :--- |
| **`cli.js`** | Interactive terminal, command parsing, output formatting, readline interface |
| **`analyzer.js`** | RPC connection management, on-chain data fetching, risk scoring engine, threat detection |

---

## 🔌 Programmatic Usage

You can import the analyzer module directly in your own Node.js projects:

```javascript
const IronNodeAnalyzer = require('./analyzer');

const analyzer = new IronNodeAnalyzer();

(async () => {
  // Initialize connection to TON Mainnet
  const connected = await analyzer.init();
  console.log('Connected:', connected);

  // Check wallet balance
  const balance = await analyzer.getBalance('EQCxE6mUtQWZZgHJdu7wcg5jUoxeLIJgO3Fp34v1R9412THy');
  console.log('Balance:', balance, 'TON');

  // Full security analysis
  const report = await analyzer.analyzeWallet('EQCxE6mUtQWZZgHJdu7wcg5jUoxeLIJgO3Fp34v1R9412THy');
  console.log('Risk Score:', report.riskScore);
  console.log('Risk Level:', report.riskLevel);
  console.log('Flags:', report.flags);

  // Get network info
  const network = await analyzer.getNetworkInfo();
  console.log('Latest Block:', network.blockNumber);
})();
```

### Available Methods

| Method | Returns | Description |
| :--- | :--- | :--- |
| `init()` | `boolean` | Connect to TON RPC (auto-failover) |
| `analyzeWallet(address)` | `object` | Full security analysis with risk score |
| `getBalance(address)` | `number` | TON balance in TON |
| `getTxCount(address)` | `number` | Transaction count |
| `isContract(address)` | `boolean` | Contract detection |
| `getTokenBalance(token, wallet)` | `object` | Jetton token balance |
| `getLatestBlock()` | `object` | Latest block data |
| `getBlockByNumber(n)` | `object` | Specific block data |
| `getGasPrice()` | `number` | Fee rate in nanotons |
| `getTransaction(hash)` | `object` | Transaction details |
| `getNetworkInfo()` | `object` | Full network status |

---

## 💰 Supported Tokens

IronNode tracks the following Jettons on TON Mainnet:

| Token | Symbol | Contract Address | Decimals |
| :--- | :--- | :--- | :---: |
| Tether USD | `USDT` | `EQCxE6mUtQWZZgHJdu7wcg5jUoxeLIJgO3Fp34v1R9412THy` | 6 |
| Notcoin | `NOT` | `EQAvlWFDxGF2l0WwS8S16jVp6yP6g3_EQAv-Av-Av-Av-9x9` | 9 |
| Dogs | `DOGS` | `EQCvxJy44zgst49Wc57QGtiJa9GTOUeP61s2n9fEQ85D-7-2` | 9 |
| Hamster Kombat | `HMSTR` | `EQC9EQC9EQC9EQC9EQC9EQC9EQC9EQC9EQC9EQC9EQC9EQC9` | 9 |

---

## ⌨️ Keyboard Shortcuts

| Key | Action |
| :--- | :--- |
| `↑` / `↓` | Navigate command history |
| `Tab` | Autocomplete command |
| `Ctrl + L` | Clear terminal |
| `Ctrl + C` | Exit |

---

## 🔧 Configuration

Copy `.env.example` to `.env` to configure a custom RPC endpoint:

```bash
cp .env.example .env
```

```env
# Custom TON Network RPC URL (optional)
TON_RPC_URL=https://toncenter.com/api/v2/jsonRPC
```

If no custom RPC is set, IronNode automatically cycles through:

| Priority | RPC Endpoint | Type |
| :---: | :--- | :--- |
| 1 | `https://toncenter.com/api/v2/jsonRPC` | Primary |
| 2 | `https://ton.access.orbs.network` | Fallback |
| 3 | `https://ton-mainnet.core.chainstack.com` | Fallback |

---

## 📂 Project Structure

```
IronNode-CLI/
├── cli.js              # Interactive CLI terminal (16 commands)
├── analyzer.js         # Security analysis engine (real RPC calls)
├── package.json        # Dependencies & scripts
├── start-cli.bat       # Windows one-click launcher
├── .env.example        # RPC configuration template
├── .gitignore          # Git exclusions
├── LICENSE             # MIT License
├── CONTRIBUTING.md     # Contribution guidelines
├── CHANGELOG.md        # Version history
├── Asset/
│   ├── logo.png        # IronNode logo (512×512)
│   ├── screenshot-boot.png
│   ├── screenshot-scan.png
│   └── screenshot-help.png
└── README.md           # This file
```

---

## ❓ FAQ

<details>
<summary><b>Does IronNode require an API key?</b></summary>
<br>
No. IronNode uses public TON Mainnet RPC endpoints. No API key is needed. Optionally, you can set a custom RPC via the <code>.env</code> file.
</details>

<details>
<summary><b>Does IronNode store or transmit my wallet address?</b></summary>
<br>
No. All data is processed locally. No wallet addresses or scan results are stored, logged, or transmitted to any server.
</details>

<details>
<summary><b>Can I use the analyzer in my own project?</b></summary>
<br>
Yes. Import <code>analyzer.js</code> as a module: <code>const IronNodeAnalyzer = require('./analyzer');</code>. See the <a href="#-programmatic-usage">Programmatic Usage</a> section for examples.
</details>

<details>
<summary><b>Why is the risk score not 0 for known-safe wallets?</b></summary>
<br>
The risk engine uses address entropy, activity patterns, and multiple heuristics. Even safe wallets may show a small base score (typically 5–20) due to these factors. Scores below 25 are classified as LOW risk.
</details>

<details>
<summary><b>Can I add custom tokens to track?</b></summary>
<br>
Currently, the 4 major TON Jettons are hardcoded. To add more, edit the <code>TON_TOKENS</code> object in <code>analyzer.js</code> with the token's contract address, symbol, and decimals.
</details>

<details>
<summary><b>Does it work on testnets?</b></summary>
<br>
IronNode is configured for TON Mainnet. To use a testnet, change the RPC URL in <code>.env</code>.
</details>

---

## 🔒 Security & Privacy

- **Read-only** — IronNode never requests private keys, seed phrases, or signatures
- **No data storage** — No wallet addresses or scan results are stored or transmitted
- **Open source** — Full source code available for audit
- **Public RPC** — Uses public TON Mainnet RPC endpoints (no API keys required)
- **Local execution** — All analysis runs on your machine

---

## 🤝 Contributing

Contributions are welcome! Please read the [CONTRIBUTING.md](CONTRIBUTING.md) guide before submitting a pull request.

```bash
# Fork → Clone → Branch → Code → PR
git checkout -b feature/my-feature
```

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

<div align="center">
  <b>Built with ❤️ for the TON network ecosystem</b>
  <br>
  <sub>IronNode CLI v2.4.1 · TON Mainnet</sub>
</div>
