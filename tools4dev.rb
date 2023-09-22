class Tools4dev < Formula
    desc "UNIX zsh Library (shell as functions)"
    homepage "https://github.com/T4D-Suites/Tools4Dev"
    url "https://github.com/T4D-Suites/Tools4Dev/releases/download/7.0.0-dev345/tools4dev_7.0.0-dev345.tar"
    version "7.0.0-dev345"
    sha256 "b05cc774dc28ef441ffaf1f31a6aa478a1bc51107838e98748a75d7eeb774412"
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
  
