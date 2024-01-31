# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sdkwizard < Formula
  desc "SDK WIZARD"
  homepage "https://github.com/manoj897/SdkIntegrationWizard"
  url "https://github.com/manoj897/SdkIntegrationWizard/archive/refs/tags/1.0.0.tar.gz"
  sha256 "055ac9a0c6f3ea9580958d16f56642e5309accbd83c780a2f5e00e76f1a0889c"
  license ""

  depends_on "openjdk@11"

  def install
        libexec.install "wizard/output/wizard.jar"
        bin.write_jar_script libexec/"wizard.jar", "sdkwizard", java_version: "11"
  end

  test do
  end
end