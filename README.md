# Cozystack Homebrew Tap

> **⚠️ Incubating Tap**: This is a community-maintained tap in incubation status. Formulas are provided as-is until they are accepted into the official [homebrew/core](https://github.com/Homebrew/homebrew-core) repository. No official Homebrew support is provided for third-party taps.

[![Formulas](https://img.shields.io/badge/formulas-3-blue)](Formula/)
[![Status](https://img.shields.io/badge/status-incubating-yellow)](https://docs.brew.sh/Taps)

Official Homebrew tap for Cozystack tools.

## About This Tap

This tap provides early access to Cozystack CLI tools. Formulas are maintained here until they meet the requirements for inclusion in [homebrew/core](https://github.com/Homebrew/homebrew-core).

**Current Status**: 🟡 Incubating

- **Stability**: Formulas are manually maintained and tested
- **Support**: Community support via [GitHub Issues](https://github.com/cozystack/cozystack/issues)
- **Updates**: Manual updates when new releases are published
- **Goal**: Acceptance into official homebrew/core

**What this means for users:**

- ✅ Safe to use for development and testing
- ✅ Formulas follow Homebrew standards
- ⚠️ No official Homebrew support
- ⚠️ Updates require manual `brew upgrade`
- ℹ️ Formula names may change if accepted to homebrew/core

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

### cozyvalues-gen

Code generator for Go structs, CRDs, and JSON schemas from annotated YAML.

```bash
brew install cozyvalues-gen
```

**Features:**

- Generate Go structs from JSDoc-annotated values.yaml
- Create Kubernetes CustomResourceDefinitions (CRDs)
- Output JSON schemas for validation
- Auto-update README.md Parameters section

**Requirements:** Go toolchain (for generated code compilation)

**Repository:** https://github.com/cozystack/cozyvalues-gen

## Usage

After installation, check available commands:

```bash
cozyhr --help
cozypkg --help
cozyvalues-gen --help
```

## Support and Contributing

### Getting Help

- **Documentation**: https://cozystack.io/docs
- **Issues**: https://github.com/cozystack/cozystack/issues
- **Telegram**: https://t.me/cozystack

### Contributing

Contributions are welcome! If you'd like to help maintain formulas or test new versions:

1. Open an issue in [cozystack/homebrew-tap](https://github.com/cozystack/homebrew-tap/issues)
2. Submit a pull request with formula updates
3. Report bugs or suggest improvements

### Homebrew Core Submission

We plan to submit these formulas to [homebrew/core](https://github.com/Homebrew/homebrew-core) once they meet the [acceptability criteria](https://docs.brew.sh/Acceptable-Formulae).

**Important**: Submission will only happen after projects reach **75+ GitHub stars** and have **stable releases** (no alpha/beta versions). This ensures formulas are mature and widely adopted before entering the official Homebrew ecosystem.

## License

Apache-2.0
