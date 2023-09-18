# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Deploy your apps to your own Platform as a Service."
  homepage "https://deckrun.com/"
  version "0.0.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.20/deck_Darwin_x86_64.tar.gz"
      sha256 "adc554bbce00ce845f82fa58121f7dae43a4abe63b010ac1641da7237bbbb63c"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.20/deck_Darwin_arm64.tar.gz"
      sha256 "fad346c50825c187965fae5581edeea9f1a32082dcd2246b50c6c3a52a010535"

      def install
        bin.install "deck"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.20/deck_Linux_x86_64.tar.gz"
      sha256 "86e6ef8a8a72baa3e657f7e703f88fb38bfb1e5e5ccfc70ca1e4c96c5470af42"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.20/deck_Linux_arm64.tar.gz"
      sha256 "7732e430d4b288fc6f4d414a6be0df2ccfb10caa5f7351673fa1e3a466ee9a6e"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck version"
  end
end
