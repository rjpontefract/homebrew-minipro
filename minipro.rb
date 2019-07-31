class Minipro < Formula
  desc 'An open source program for controlling the MiniPRO TL866xx series of chip programmers'
  homepage 'https://gitlab.com/DavidGriffith/minipro'
  head 'https://gitlab.com/DavidGriffith/minipro.git'

  depends_on 'pkg-config' => :build
  depends_on 'libusb'

  def install
    system 'make'
    bin.install 'minipro'
    bin.install 'miniprohex'
    man1.install 'man/minipro.1'
  end

  test do
    system 'false'
  end
end
