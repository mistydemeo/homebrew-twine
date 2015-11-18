class Twine2 < Formula
  homepage "http://twinery.org/"
  url "https://bitbucket.org/klembot/twinejs/downloads/twine_2.0.9_osx.zip"
  sha256 "b0049e62ef9029fa12a9fa7e8be15d57a77783c38e2ea76d896b2ff9aba747db"

  def install
    (prefix/"Twine2.app").install Dir["*"]
    (bin/"twine2").write <<-EOS.undent
    #!/bin/sh
    exec #{opt_prefix}/Twine2.app/Contents/MacOS/nwjs
    EOS
  end

  def caveats; <<-EOS.undent
    Twine 2 is now distributed as a .app bundle; saved data from previous
    versions of Twine 2 need to be exported to disk and then reimported.

    You can run Twine 2 by typing:
      twine2
    EOS
  end
end
