class Twine2 < Formula
  homepage "http://twinery.org/"
  url "http://twinery.org/downloads/twine_2.0.1.zip"
  sha1 "4208ec606622de976fdc8c05f358c1e6e6162f28"

  def install
    (share/"twine2").install Dir["Twine #{version}/*"]
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
