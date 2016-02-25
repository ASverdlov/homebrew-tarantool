class Msgpuck < Formula
  desc "Simple and efficient MsgPack encoder/decoder library"
  homepage "https://github.com/rtsisyk/msgpuck/"
  url "https://github.com/rtsisyk/msgpuck/archive/1.0.2.tar.gz"
  sha256 "0c818dfa10b5f09fe675ac2693bbf09300af0cc4dc948d0e4ea42b22245ed605"

  depends_on "cmake" => :build

  def install
    args = std_cmake_args

    system "cmake", ".", *args
    system "make"
    system "make", "install"
  end

  test do
    system "make", "test"
  end
end
