# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class InmobiSdkWizard < Formula
  desc "InMobi SDK integration Wizard"
  homepage "https://github.com/manoj897/android-sdk-integration-wizard"
  url "https://github.com/manoj897/android-sdk-integration-wizard/archive/refs/tags/v1.0.0.zip"
  sha256 "81978ddd587b0d7a9c45f260451e8f73bfe9e578d3dd3020d82b4c96967d5d8f"
  license ""

  depends_on "openjdk"

  def install
        libexec.install Dir['*']
        bin.write_jar_script libexec/"android-sdk-inmobisdkwizard.jar" "inmobiwizard"
  end

  test do
  end
end