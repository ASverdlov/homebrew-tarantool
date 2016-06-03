class LuaAvroC < Formula
  desc "Lua bindings for the Avro data serialization framework"
  homepage "https://github.com/tarantool/http"
  #url "https://github.com/redjack/lua-avro-c/archive/1.0.1.tar.gz"
  url "https://raw.githubusercontent.com/bigbes/homebrew-tarantool/master/tgz/lua-avro-c-1.0.1.tar.gz"
  sha256 "bac90b939d22e3831f3cbfc257bb1e66ec535fd8a0281d1c182376b473adecec"
  head "https://github.com/redjack/lua-avro-c.git", :shallow => false

  depends_on "pkg-config" => :build
  depends_on "avro-c"
  depends_on "tarantool"

  def install
    args = ["PREFIX=#{prefix}", "LUA_INCDIR=#{HOMEBREW_PREFIX}/include/tarantool",
            "LUA_LIBDIR=#{lib}/tarantool", "LUA_SHAREDIR=#{share}/tarantool"]
    system "make", *args
    system "make", "install", *args
  end

  test do
    system "false"
  end
end
