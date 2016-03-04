class TarantoolQueue < Formula
  desc "Tarantool rock for Queue server"
  homepage "https://github.com/tarantool/queue"
  url "https://github.com/tarantool/queue/archive/1.0.1.tar.gz"
  sha256 "2f00231fe5fbb53ccce603b93565b3078a42f950f4e8f0cb173eb0ea723596b0"
  head "https://github.com/tarantool/queue.git", :shallow => false

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

