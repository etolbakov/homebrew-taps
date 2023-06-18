
class Excalidocker < Formula
    desc "Rust-based utility to convert docker-compose.yaml files into excalidraw files."
    homepage "https://github.com/etolbakov/excalidocker-rs"
    version "0.1.5"
  
    on_macos do
      if Hardware::CPU.arm?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.5/excalidocker-darwin-arm64.tgz"
        sha256 "bbb12f36b2100cdcc99141cd9f446416a93573ea4a1089c9e9f99a9e7ba4d48b"
  
        def install
          bin.install "excalidocker"
        end
      end
      if Hardware::CPU.intel?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.5/excalidocker-darwin-amd64.tgz"
        sha256 "9d0b959ddb6953693bff46540d43add5c73f763fe0ba14fdad349ce2c3b0a100"
  
        def install
          bin.install "excalidocker"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?        
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.5/excalidocker-linux-arm64.tgz"
        sha256 "c6cf6ba6c34e3b7e13fae7900d0e205fed0b59ec0a0e75e568d76b544e73e661"
  
        def install
          bin.install "excalidocker"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/etolbakov/excalidocker-rs/releases/download/0.1.5/excalidocker-linux-amd64.tgz"
        sha256 "794852f1eba4a2d8e7d746efa6b066fb29fa8ee1222d1f2a09144b046ffbd2d6"
  
        def install
          bin.install "excalidocker"
        end
      end
    end
  end