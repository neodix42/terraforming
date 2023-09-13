resource "hcloud_ssh_key" "default" {
  name       = "deploy_key"
  public_key = file("./etc/private/deploy_key.pub")
}