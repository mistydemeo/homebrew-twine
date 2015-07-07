class Twine2 < Formula
  homepage "http://twinery.org/"
  url "http://twinery.org/downloads/twine_2.0.8_osx.zip"
  sha256 "b7c61e838343bdce86ce7a7bf3618376c23f0388ce4ce7f8209bf6fb5ac27d75"

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
