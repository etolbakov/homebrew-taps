
class Excalidocker < Formula
    desc "Rust-based utility to convert docker-compose.yaml files into excalidraw files."
    homepage "https://github.com/etolbakov/excalidocker-rs"
    version "0.1.7"
  
    on_macos do
      if Hardware::CPU.arm?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.7/excalidocker-darwin-arm64.tgz"
        sha256 "373bcddf6fa696d74f1ca029f472388a00612bc4cccd9c2a190d0b09442f3183"
  
        def install
          bin.install "excalidocker"
        end
      end
      if Hardware::CPU.intel?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.7/excalidocker-darwin-amd64.tgz"
        sha256 "0150a2241e09e72734cc137fbd442201edd012898af3fb6770d899403356eb42"
  
        def install
          bin.install "excalidocker"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.7/excalidocker-linux-arm64.tgz"
        sha256 "54d34b195d1c41230c0dcace9db33f8d12e96aacde303230b12f70e792131fcc"
  
        def install
          bin.install "excalidocker"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.7/excalidocker-linux-amd64.tgz"
        sha256 "ce0e8547b4485aa0f181fb702f41b88f848246b157c58d3f54ab45ed685efc48"
  
        def install
          bin.install "excalidocker"
        end
      end
    end
  end
