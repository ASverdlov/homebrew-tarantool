class TarantoolC < Formula
  desc "New C client for Tarantool 1.6+"
  homepage "https://github.com/tarantool/tarantool-c"
  url "https://github.com/tarantool/tarantool-c/archive/1.0.0.tar.gz"
  sha256 "3bd4e137ac91873f43bf161504ee030af32e40c115537a8ad72dd907c7f94b9a"
  head "https://github.com/tarantool/tarantool-c.git", :shallow => false

  depends_on "cmake" => :build

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
