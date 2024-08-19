# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Deploy your apps to your own Platform as a Service."
  homepage "https://deckrun.com/"
  version "0.0.33"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.33/deck_Darwin_x86_64.tar.gz"
      sha256 "c162365570313b50199f34e07f61755dbeaf786b6d53b7d9d0b5c5fe18ba791c"

      def install
        bin.install "deck"
      end
    end
    on_arm do
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.33/deck_Darwin_arm64.tar.gz"
      sha256 "49e5a39773dfa1ca7130476dec73833ad52109d36792c9523b32a4dee01f2c6e"

      def install
        bin.install "deck"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/deckrun/deck-cli/releases/download/v0.0.33/deck_Linux_x86_64.tar.gz"
        sha256 "8fee4e25c1c0a99251e22b81d103d19d902a60af240bd378e0382013e6c15f32"

        def install
          bin.install "deck"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/deckrun/deck-cli/releases/download/v0.0.33/deck_Linux_arm64.tar.gz"
        sha256 "d12047068c6009706bdfaac0a4329371fe15474aa3b1d15ef1e806eb845f6744"

        def install
          bin.install "deck"
        end
      end
    end
  end

  test do
    system "#{bin}/deck version"
  end
end
