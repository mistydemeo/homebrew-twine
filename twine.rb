class Twine < Formula
  desc "Interactive fiction authoring tool"
  homepage "http://twinery.org/"
  url "https://github.com/tweecode/twine/archive/v1.4.2.tar.gz"
  sha256 "2be41d809e6467657cc80687789c2a5e24e28cffe24f942d213e2f7253fd4a17"
  head "https://github.com/tweecode/twine.git"

  depends_on "wxpython"

  def install
    libexec.install Dir["*"]
    (bin/"twine").write <<-EOS.undent
    #!/bin/sh
    export PYTHONPATH=#{Formula["wxpython"].lib}/python2.7/site-packages:$PYTHONPATH
    exec python #{libexec}/app.py
    EOS
  end

  def caveats; <<-EOS.undent
    You can run Twine by typing:
      twine
    EOS
  end
end
