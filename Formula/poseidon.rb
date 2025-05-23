class Poseidon < Formula
    desc "Command and Control"
    homepage "https://github.com/kvcallfield/"
    url "https://github.com/kvcallfield/homebrew-brew/releases/download/v1.33.7/poseidon-1.33.7.tar.gz"
    sha256 "a57abacdb3915450ec70c83d5efc717efbcbed80f350dadeaaf38bcd04d7b2e2"
    version "1.33.7"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
      end

    def caveats
        <<~EOS
        To finish installation, add the following line to .zshrc or .bashrc  
  source #{bin}/completion.sh
Then reopen your terminal app
        EOS
    end
    end
