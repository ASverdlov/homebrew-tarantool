class TarantoolSmtp < Formula
  desc "Tarantool rock for an SMTP client"
  homepage "https://github.com/tarantool/smtp"
  head "https://github.com/tarantool/smtp.git", :shallow => false

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
