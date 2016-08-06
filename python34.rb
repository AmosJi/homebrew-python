class Python34 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.4.5/Python-3.4.5.tgz"
  version "3.4.5"
  md5 "5f2ef90b1adef35a64df14d4bb7af733"

  def install
    system "./configure", "--prefix=#{prefix}"
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
