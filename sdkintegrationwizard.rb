# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sdkintegrationwizard < Formula
  desc "SDK integration Wizard"
  homepage "https://github.com/manoj897/android-sdk-integration-wizard"
  url "https://github.com/manoj897/android-sdk-integration-wizard/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "81978ddd587b0d7a9c45f260451e8f73bfe9e578d3dd3020d82b4c96967d5d8f"
  license ""

  # depends_on "cmake" => :build
  depends_on "openjdk@11"

  def install
    libexec.install Dir['*']
    bin.write_jar_script libexec/"android-sdk-integration-wizard.jar", "android-sdk-integration-wizard", java_version: "11"
  end

  test do
  end
end