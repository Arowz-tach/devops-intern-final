job "hello" {
  datacenters = ["dc1"]
  type        = "service"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "raw_exec"

      config {
        command = "docker"
        args    = ["run", "--rm", "devops-intern-final"]
      }

      resources {
        cpu    = 100
        memory = 64
      }
    }
  }
}
