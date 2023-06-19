
class Excalidocker < Formula
    desc "Rust-based utility to convert docker-compose.yaml files into excalidraw files."
    homepage "https://github.com/etolbakov/excalidocker-rs"
    version "0.1.6"
  
    on_macos do
      if Hardware::CPU.arm?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.6/excalidocker-darwin-arm64.tgz"
        sha256 "6314dd6e04c2acb1193617a74bb062e2c3cd55b2c800c1cf03a136396d1898bb"
  
        def install
          bin.install "excalidocker"
        end
      end
      if Hardware::CPU.intel?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.6/excalidocker-darwin-amd64.tgz"
        sha256 "493622c6869157afc878931cf5a499b5791c16f8f911f6bfc0ddd5c83bef5264"
  
        def install
          bin.install "excalidocker"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.6/excalidocker-linux-arm64.tgz"
        sha256 "e57caba3e6e1da728209146abe3a07652faeed7b6abe785bafb978b4fb2df510"
  
        def install
          bin.install "excalidocker"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.6/excalidocker-linux-amd64.tgz"
        sha256 "7248e4f5f0bc77e3e49a3785480aaa7a8f50fab2b6a6ece7e9bbf1483a613906"
  
        def install
          bin.install "excalidocker"
        end
      end
    end
  end
