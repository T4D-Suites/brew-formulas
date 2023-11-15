class TeamDefault < Formula
    desc "TeamDefault Global Repository"
    homepage "https://github.com/T4D-Suites/T4D-Team-Default"
    url "file:///dev/null"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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