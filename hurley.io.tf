resource "digitalocean_domain" "default" {
   name = "hurley.io"
   ip_address = "${digitalocean_droplet.haproxy01.ipv4_address}"
}

resource "digitalocean_record" "CNAME-app" {
  domain = "${digitalocean_domain.default.name}"
  type = "CNAME"
  name = "www"
  value = "@"
}
