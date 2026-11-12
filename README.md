# homebrew-run-ai

Homebrew tap for [run-ai](https://ai.hostingodvaska.cz/) — a provider-neutral
terminal AI session runner.

## Installation

```sh
brew tap hostingodvaska/run-ai
brew install run-ai
run_ai --help
```

If the tap has not yet been published to GitHub, install with the full URL:

```sh
brew tap hostingodvaska/run-ai https://github.com/hostingodvaska/homebrew-run-ai
brew install run-ai
```

## Supported platforms

| Platform | Architecture |
|---|---|
| macOS | arm64 (Apple Silicon) |
| macOS | amd64 (Intel) |

The formula selects the correct archive automatically based on
`Hardware::CPU.arm?`. Linux is not supported through this tap; use the APT
repository instead.

## Dependencies

Homebrew installs `tmux` and `rsync` automatically. SSH, curl, and TLS
certificates are provided by macOS. `bubblewrap` is Linux-only and is not
required or installed on macOS.

## Upgrade

```sh
brew update
brew upgrade run-ai
```

The formula SHA256 values are derived from the signed release manifest and
updated with each new release. Never edit the SHA256 values by hand.

## Uninstall

```sh
brew uninstall run-ai
brew untap hostingodvaska/run-ai
```

## Official release and manifest

| Resource | URL |
|---|---|
| Release index | https://ai.hostingodvaska.cz/releases/0.4.1/ |
| Signed manifest | https://ai.hostingodvaska.cz/releases/0.4.1/manifest.json |
| Manifest signature | https://ai.hostingodvaska.cz/releases/0.4.1/manifest.json.minisig |
| Minisign public key | https://ai.hostingodvaska.cz/keys/run-ai-release.minisign.pub |
| Latest release pointer | https://ai.hostingodvaska.cz/latest/latest.json |
| Formula (live) | https://ai.hostingodvaska.cz/homebrew/Formula/run-ai.rb |

The release manifest is signed with Minisign. To verify independently:

```sh
curl -sO https://ai.hostingodvaska.cz/releases/0.4.1/manifest.json
curl -sO https://ai.hostingodvaska.cz/releases/0.4.1/manifest.json.minisig
curl -sO https://ai.hostingodvaska.cz/keys/run-ai-release.minisign.pub
minisign -Vm manifest.json -p run-ai-release.minisign.pub
```

## Security

Artifact SHA256 values in the formula are taken directly from the
Minisign-signed manifest. Homebrew verifies each download against these
values before installation. Do not install from untrusted tap mirrors.
