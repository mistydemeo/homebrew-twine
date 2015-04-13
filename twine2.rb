class Twine2 < Formula
  homepage "http://twinery.org/"
  url "http://twinery.org/downloads/twine_2.0.4.zip"
  sha256 "89133a31216f38d61b66807c22f03fcdfb6113a3794b4ff471e537b922247b0a"

  def install
    (share/"twine2").install Dir["*"]
    (bin/"twine2").write <<-EOS.undent
    #!/bin/sh
    exec open #{opt_share}/twine2/index.html
    EOS
  end

  def caveats; <<-EOS.undent
    Twine has been installed to:
      #{opt_share}/twine2/index.html

    You can also run Twine by typing:
      twine2
    EOS
  end
end
