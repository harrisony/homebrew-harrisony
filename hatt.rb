require "formula"
require "language/haskell"

class Hatt < Formula
  include Language::Haskell::Cabal
  homepage "http://extralogical.net/projects/hatt/"
  url "http://hackage.haskell.org/package/hatt-1.5.0.3/hatt-1.5.0.3.tar.gz"
  sha1 "a53aac45cae1e7e2ca0267b2eb72ef2ca9dc617a"

  head "https://github.com/beastaugh/hatt.git", :using => :git

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    install_cabal_package
  end

  test do
    system "#{bin}/hatt", "--version"
  end
end
