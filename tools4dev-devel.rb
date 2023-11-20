class Tools4devDevel < Formula
    desc "UNIX zsh Library (shell as functions)"
    homepage "https://github.com/T4D-Suites/Tools4Dev"
    url "file:///dev/null"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    version "devel"
    license "MIT-Modern-Variant"

    
    depends_on "tools4dev"
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # Remove unrecognized options if warned by configure
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      system "mv homebrew-formulas/t4d-devel #{bin}"
    end

    test do
      assert_equal "OK", shell_output("echo OK").chomp
    end
  end
  
