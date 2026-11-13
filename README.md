# homebrew-run-ai

Homebrew tap for [run-ai](https://github.com/vaclavambroz/run-ai) — a provider-neutral
terminal AI session runner.

## Installation

```sh
brew tap vaclavambroz/run-ai
brew install run-ai
run_ai --help
```

If the tap has not yet been published to GitHub, install with the full URL:

```sh
brew tap vaclavambroz/run-ai https://github.com/vaclavambroz/homebrew-run-ai
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
brew untap vaclavambroz/run-ai
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

## License and provenance

The **0.4.1 binary** distributed by this formula was produced before the
source code was published. It is not covered by the MIT license of the
public source repository. Use it under the terms that accompanied the
original release.

The **source code** at [github.com/vaclavambroz/run-ai](https://github.com/vaclavambroz/run-ai)
is MIT licensed (Copyright 2026 Václav Ambrož). Builds from source are
MIT licensed. Future formula releases will be sourced from public
Minisign-signed builds and will carry the MIT SPDX identifier.

## Security

Artifact SHA256 values in the formula are taken directly from the
Minisign-signed manifest. Homebrew verifies each download against these
values before installation. Do not install from untrusted tap mirrors.
