group "default" {
  targets = ["latest", "alpine", "slim"]
}

target "latest" {
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["erlend/rubocop:latest"]
  args = { DOCKER_TAG = "latest" }
}

target "alpine" {
  inherits = ["latest"]
  tags = ["erlend/rubocop:alpine"]
  args = { DOCKER_TAG = "alpine" }
}

target "slim" {
  inherits = ["latest"]
  tags = ["erlend/rubocop:slim"]
  args = { DOCKER_TAG = "slim" }
}
