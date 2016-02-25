class Small < Formula
  desc "Collection of Specialized Memory ALLocators for small allocations"
  homepage "https://github.com/tarantool/small"
  url "https://github.com/tarantool/small/archive/1.0.1.tar.gz"
  sha256 "35b24a7dba13cf168d85880adc7c179a8504b78743eb916dd271d09e44b3d3ef"
  head "https://github.com/tarantool/small.git", :shallow => false

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
