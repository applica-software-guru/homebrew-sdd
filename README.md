# Homebrew Tap for SDD

Official Homebrew tap for installing the SDD CLI.

## Install

```bash
brew tap applica-software-guru/sdd
brew install applica-software-guru/sdd/sdd
```

## Upgrade

```bash
brew update
brew upgrade sdd
```

## Repository Structure

```text
homebrew-sdd/
  Formula/
    sdd.rb
```

## How It Stays Updated

The formula is updated automatically from the main repository (`applica-software-guru/sdd`) when a GitHub Release is published.
The workflow `.github/workflows/sync-homebrew-tap.yml` computes npm tarball SHA256 and updates `Formula/sdd.rb` in this tap.
