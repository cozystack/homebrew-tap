# Cozystack Homebrew Tap

Official Homebrew tap for Cozystack tools.

## Installation

```bash
brew tap cozystack/tap
```

## Available Formulas

### cozypkg

CLI for managing Cozystack packages (PackageSource and Package CRDs).

```bash
brew install cozypkg
```

**Features:**
- Install PackageSource and dependencies interactively
- List installed packages
- Delete packages
- Show dependency graphs

**Requirements:** Kubernetes cluster with Cozystack installed

**Repository:** https://github.com/cozystack/cozystack

## Usage

After installation, check available commands:

```bash
cozypkg --help
```

## Support

- **Documentation**: https://cozystack.io/docs
- **Issues**: https://github.com/cozystack/cozystack/issues
- **Telegram**: https://t.me/cozystack

## License

Apache-2.0
