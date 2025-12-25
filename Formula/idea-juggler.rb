class IdeaJuggler < Formula
  desc "Manage separate IntelliJ IDEA instances per project with isolated configurations"
  homepage "https://github.com/your-username/idea-juggler"
  url "https://github.com/your-username/idea-juggler/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "" # Update after creating a release
  license "" # Add your license
  head "https://github.com/your-username/idea-juggler.git", branch: "main"

  depends_on "gradle" => :build
  depends_on "openjdk@17"

  def install
    system "gradle", "build", "-x", "test"
    
    # Install the JAR
    libexec.install "build/libs/idea-juggler-#{version}.jar"
    
    # Create wrapper script
    (bin/"idea-juggler").write <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Formula["openjdk@17"].opt_prefix}"
      exec "${JAVA_HOME}/bin/java" -jar "#{libexec}/idea-juggler-#{version}.jar" "$@"
    EOS
  end

  test do
    # Test that the CLI can display help
    assert_match "Usage: idea-juggler", shell_output("#{bin}/idea-juggler --help")
  end
end
