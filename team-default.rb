class Default < Formula
    desc "Default Global Repository"
    homepage "https://github.com/Default"
    url "file:///dev/null"
    sha256 "b51d039ef1f9eedf1d5143b22e2b9a945bb56fc0acb5d1bc62739fa49fb3e45b"
    version "1.0.1"
    license "MIT-Modern-Variant"

    #generic
    depends_on "t4d-suites/tools4dev/tools4dev"
    depends_on "git"
    depends_on "tree"
    depends_on "dockutil" => :optional

    # other deps
    #...
    #...
    
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # Remove unrecognized options if warned by configure
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      system "mkdir -p #{bin}"
      system "git clone git@github.com:Tools4Dev/homebrew-formulas.git"
      system "mv homebrew-formulas/t4d-workspace #{bin}"
      system "mv homebrew-formulas/t4d-update #{bin}"
    end

    test do
      assert_equal "OK", shell_output("echo OK").chomp
    end
  end