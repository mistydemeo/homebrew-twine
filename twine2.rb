class Twine2 < Formula
  homepage "http://twinery.org/"
  url "http://twinery.org/downloads/twine_2.0.zip"
  sha1 "6a1db4c76811e3cd7c52cf3698fbce9019c70ed3"

  def install
    (share/"twine2").install Dir["*"]
    (bin/"twine2").write <<-EOS.undent
    #!/bin/sh
    exec open #{opt_share}/twine2/index.html
    EOS
  end

  def caveats; <<-EOS.undent
    Twine has been installed to:
      #{share}/twine2/index.html

    You can also run Twine by typing:
      twine2
    EOS
  end
end
