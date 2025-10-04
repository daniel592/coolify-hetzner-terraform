resource "hcloud_firewall" "default" {
  labels = {}
  name   = "firewall-main"

  # SSH
  rule {
    direction  = "in"
    port       = "22"
    protocol   = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  # HTTP
  rule {
    direction  = "in"
    port       = "80"
    protocol   = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  rule {
    direction       = "out"
    port            = "80"
    protocol        = "tcp"
    destination_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  # HTTPS
  rule {
    direction  = "in"
    port       = "443"
    protocol   = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  rule {
    direction       = "out"
    port            = "443"
    protocol        = "tcp"
    destination_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  # Port 6001 (likely for app/websocket)
  rule {
    direction  = "in"
    port       = "6001"
    protocol   = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  rule {
    direction       = "out"
    port            = "6001"
    protocol        = "tcp"
    destination_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  # Port 8000 (likely for app/API)
  rule {
    direction  = "in"
    port       = "8000"
    protocol   = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  # Port 3000 (likely for app/frontend)
  rule {
    direction  = "in"
    port       = "3000"
    protocol   = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  # Port range 9000-9100 (likely for services/monitoring)
  rule {
    direction  = "in"
    port       = "9000-9100"
    protocol   = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }

  rule {
    direction       = "out"
    port            = "9000-9100"
    protocol        = "tcp"
    destination_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }
}