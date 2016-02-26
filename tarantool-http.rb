class TarantoolHttp < Formula
  desc "Tarantool rock for an HTTP client and a server"
  homepage "https://github.com/tarantool/http"
  url "https://github.com/tarantool/http/archive/1.0.0.tar.gz"
  sha256 "3d72c52204135494f457d04f00b8fbaf056e59436413d836660968786f2323d0"
  head "https://github.com/tarantool/http.git", :shallow => false

  depends_on "cmake" => :build
  depends_on "tarantool"

  def install
    args = std_cmake_args

    system "cmake", ".", *args
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
