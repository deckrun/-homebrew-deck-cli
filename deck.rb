# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Deploy your apps to your own Platform as a Service."
  homepage "https://deckrun.com/"
  version "0.0.58"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.58/deck_Darwin_x86_64.tar.gz"
      sha256 "b03223aa7d7c431929aa04ce847f3705d4fce65fdb468ea703b6537f9aef48a8"

      def install
        bin.install "deck"
      end
    end
    on_arm do
      url "https://github.com/deckrun/deck-cli/releases/download/v0.0.58/deck_Darwin_arm64.tar.gz"
      sha256 "11938f34e4b25b70a9564ac8fcee3b2b6c6a40e461624f0ba06c5e83297156f6"

      def install
        bin.install "deck"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/deckrun/deck-cli/releases/download/v0.0.58/deck_Linux_x86_64.tar.gz"
        sha256 "a70707d122a1cb76f637dcfd8b0745c0ede5e788a85907aa1e8894b5d1441197"

        def install
          bin.install "deck"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/deckrun/deck-cli/releases/download/v0.0.58/deck_Linux_arm64.tar.gz"
        sha256 "d72f0f66914453622c9932d417123c59ff4e647e50a617cf42310499556cda1a"

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
