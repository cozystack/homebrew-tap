# Cozystack Homebrew Tap

Official Homebrew tap for Cozystack tools.

## Installation

```bash
brew tap cozystack/tap
```

## Available Formulas

### cozyhr

Cozy wrapper around Helm and Flux CD for local development.

```bash
brew install cozyhr
```

**Features:**
- Render manifests from Helm charts with HelmRelease values
- Apply changes to HelmRelease locally
- Show diff between desired and current state
- Manage HelmRelease resources (suspend, resume, delete)
- Trigger reconciliation for HelmRelease

**Requirements:** Kubernetes cluster with Flux CD

**Repository:** https://github.com/cozystack/cozyhr

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
cozyhr --help
cozypkg --help
```

## Support

- **Documentation**: https://cozystack.io/docs
- **Issues**: https://github.com/cozystack/cozystack/issues
- **Telegram**: https://t.me/cozystack

## License

Apache-2.0
