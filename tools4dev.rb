class Tools4dev < Formula
    desc "UNIX zsh Library (shell as functions)"
    homepage "https://github.com/T4D-Suites/Tools4Dev"
    version "7.0.0"
    url "https://github.com/T4D-Suites/Tools4Dev/releases/download/#{version}/tools4dev_#{version}.tar"
    sha256 "d26556d25eb99bc408dd6059dfd3f52f72ccf30549550100044a15ad924796e4"
    license "MIT-Modern-Variant"
  
    depends_on "zsh"
    depends_on "jq" => :recommended
    depends_on "awscli" => :optional
  
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
  
