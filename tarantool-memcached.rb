class TarantoolMemcached < Formula
  desc "Memcached protocol 'wrapper' for tarantool"
  homepage "https://github.com/tarantool/memcached"
  url "https://github.com/tarantool/memcached/archive/0.1.0.tar.gz"
  sha256 "ef48212967abe0fb795871154df8d3a582d9d6733e38ef3abc4d0baa18b2da93"
  head "https://github.com/tarantool/memcached.git", :shallow => false

  depends_on "cmake" => :build
  depends_on "msgpuck" =>:build
  depends_on "small"

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
