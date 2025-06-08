resource "aws_instance" "aws_vm" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "AWS_VM"
  }
}

resource "google_compute_instance" "gcp_vm" {
  name         = "gvp-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network       = "default"
    access_config {} # Required to give it a public IP
  }
}