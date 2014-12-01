require 'formula'

class Coduno < Formula
  homepage 'http://cod.uno'
  url 'https://drone.io/github.com/coduno/cli/files/darwin-amd64/coduno'
  version 'latest'

  def install
    bin.install 'coduno'
  end
end
