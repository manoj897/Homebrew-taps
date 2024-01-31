# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sdkwizard101 < Formula
  desc "SDK WIZARD"
  homepage "https://github.com/manoj897/SdkIntegrationWizard"
  url "https://github.com/manoj897/SdkIntegrationWizard/archive/refs/tags/1.0.1.tar.gz"
  sha256 "10cc1c0afa898338f4684c562dee1c4b28d362b157a05bb8521d38280da57fbf"
  license ""

  depends_on "openjdk@17"

  def install
        libexec.install "wizard/output/wizard.jar"
        bin.write_jar_script libexec/"wizard.jar", "sdkwizard", java_version: "17"
  end

  test do
  end
end