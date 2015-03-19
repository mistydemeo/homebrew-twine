class Twine2 < Formula
  homepage "http://twinery.org/"
  url "http://twinery.org/downloads/twine_2.0.3.zip"
  sha256 "2440c6525d57f55e385780e9b8686302470a47c0a67895f231a235d1679f96b0"

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
