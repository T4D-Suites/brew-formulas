class Tools4dev < Formula
    desc "UNIX zsh Library (shell as functions)"
    homepage "https://github.com/T4D-Suites/Tools4Dev"
    url "https://github.com/T4D-Suites/Tools4Dev/releases/download/7.0.0-dev337/tools4dev_7.0.0-dev337.tar"
    version "7.0.0-dev337"
    sha256 "6294a9f821da7e32e559a5a6d0b801c43554b22b4771142cdbe8b6b72eb72adf"
    license "MIT-Modern-Variant"
  
    depends_on "zsh"
    depends_on "jq"
    depends_on "awscli"
  
    # on_system macos: do
      depends_on "coreutils"
    # end
  
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # Remove unrecognized options if warned by configure
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      system "./src/Platforms/brew-install.sh", "--prefix=#{prefix}"
    end
  
    test do
      assert_equal "tools4dev", shell_output("#{bin}/t4d 'echo tools4dev'").chomp
    end
  end
  
