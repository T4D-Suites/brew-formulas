class Tools4dev < Formula
    desc "UNIX zsh Library (shell as functions)"
    homepage "https://github.com/T4D-Suites/Tools4Dev"
    url "https://github.com/T4D-Suites/Tools4Dev/releases/download/7.0.0-dev324/tools4dev_7.0.0-dev324.tar"
    version "7.0.0-dev324"
    sha256 "2fea764a36e41664c90350f79bcf4708b0233a4657b3a307e5427c83faaf054f"
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
  