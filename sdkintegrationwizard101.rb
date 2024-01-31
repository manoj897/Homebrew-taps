# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sdkintegrationwizard101 < Formula
  desc ""
  homepage "https://github.com/manoj897"
  url "https://github.com/manoj897/android-sdk-integration-wizard/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "246b1e61652083f9543e988940a8ea6524f6746fdb315cdfe55e46afd2e1ecdf"
  license ""

  depends_on "openjdk@11"

  def install
        libexec.install "bin/android-sdk-integration-wizard.jar"
        bin.write_jar_script "android-sdk-integration-wizard.jar", "android-sdk-inmobisdkwizard", java_version: "11"
  end

  test do
  end
end