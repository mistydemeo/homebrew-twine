class Twine < Formula
  homepage "http://twinery.org/"
  url "https://github.com/tweecode/twine/archive/v1.4.2.tar.gz"
  sha1 "8273abc9d14972a7b446d3478ec6bafe1e70a3cf"
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
