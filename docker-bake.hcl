variable "VERSION" {
  default = "38945"
}

target "platforms" {
  platforms = [
    "linux/arm64",
    "linux/amd64",
  ]
}

target "license-server" {
  inherits = ["platforms"]
  context = "."
  tags = [
    "cyberline/jetbrains-license-server:${VERSION}",
    "cyberline/jetbrains-license-server:latest",
  ]
}
