class Python34 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.4.5/Python-3.4.5.tgz"
  version "3.4.5"
  sha256 "997aca4dd8692f3c954658a3db11c1d0862bcbf8eadd6a164746eb33d317c034"

  def install
    system "./configure", "--prefix=#{prefix}", "--with-brewed-openssl"
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4-config"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4m"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4m-config"
  end

end
