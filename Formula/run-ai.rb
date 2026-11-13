class RunAi < Formula
  desc "Provider-neutral terminal AI session runner"
  homepage "https://github.com/vaclavambroz/run-ai"
  version "0.4.1"
  license :cannot_represent
  depends_on "tmux"
  depends_on "rsync"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://ai.hostingodvaska.cz/releases/0.4.1/run-ai_0.4.1_darwin_arm64.tar.gz"
      sha256 "a93d8d57b9d2f972036d9987b68e77467d1512d587897821ffec419c0bea22e3"
    else
      url "https://ai.hostingodvaska.cz/releases/0.4.1/run-ai_0.4.1_darwin_amd64.tar.gz"
      sha256 "43dc468761820462afed93aa2be289019f537a2047b45348dfe5a59955a2c8bb"
    end
  end

  def install
    bin.install "run_ai"
    doc.install "LICENSE"
  end

  def caveats
    <<~EOS
      run-ai is a user-scoped CLI. It does not install or start a daemon.
      Configuration: ~/Library/Application Support/run-ai/config.json
      State and audit data: ~/Library/Application Support/run-ai/state/
    EOS
  end

  test do
    assert_match "run_ai", shell_output("#{bin}/run_ai --help")
  end
end
