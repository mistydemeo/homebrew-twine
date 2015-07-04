class Twine2 < Formula
  homepage "http://twinery.org/"
  url "http://twinery.org/downloads/twine_2.0.7_osx.zip"
  sha256 "45a7666da6ddfc7f27a9c21f0e94aa13c5c94d3c0b54e653dc45bb9bd669d5b2"

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
