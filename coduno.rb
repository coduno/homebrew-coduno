require 'formula'

class Coduno < Formula
  arch = MacOS.prefer_64_bit ? 'amd64' : '386'
  
  homepage 'http://cod.uno'
  url "https://drone.io/github.com/coduno/cli/files/darwin-#{arch}/coduno"
  version 'latest'

  def install
    bin.install 'coduno'
  end
  
  def caveats
    <<-"."
This formula pulls a binary directly from Coduno's continuous integration
service, so that you receive cutting edge releases.

In turn, they might be buggy, so consider filing a bug report at
                https://github.com/coduno/cli/issues

To check the integrity of your binary, compare your sum with
            https://drone.io/github.com/coduno/cli/files
    .
  end
end
