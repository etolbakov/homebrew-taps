
class Excalidocker < Formula
    desc "Rust-based utility to convert docker-compose.yaml files into excalidraw files."
    homepage "https://github.com/etolbakov/excalidocker-rs"
    version "0.1.8"
  
    on_macos do
      if Hardware::CPU.arm?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.8/excalidocker-darwin-arm64.tgz"
        sha256 "1c1c80d7e3d867a3ad8896f350928daf185ff4e44918f6682b9cb085f0d42407"
  
        def install
          bin.install "excalidocker"
        end
      end
      if Hardware::CPU.intel?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.8/excalidocker-darwin-amd64.tgz"
        sha256 "07c4d4237265c929b81b3f8a478820a90454f4e70a5bb97a43e480eef0f0c0ab"
  
        def install
          bin.install "excalidocker"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.8/excalidocker-linux-arm64.tgz"
        sha256 "862c3f9509b110752118645539e3c319aae3186d4d5aae62217afb6accc395c1"
  
        def install
          bin.install "excalidocker"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.8/excalidocker-linux-amd64.tgz"
        sha256 "4c71cfdcbb66db051a5c244f0c17c7d3024e8feed7196eafa70e0d7118e968ae"
  
        def install
          bin.install "excalidocker"
        end
      end
    end
  end
