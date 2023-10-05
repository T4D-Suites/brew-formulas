class Tools4dev < Formula
    desc "UNIX zsh Library (shell as functions)"
    homepage "https://github.com/T4D-Suites/Tools4Dev"
    version "7.0.0-dev363"
    url "https://github.com/T4D-Suites/Tools4Dev/releases/download/#{version}/tools4dev_#{version}.tar"
    sha256 "03b1c03ad3faf7668b1bbf4a09029792564c5b5e8b916afa4ee255a6cddc4cd2"
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
  
