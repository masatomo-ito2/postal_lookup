variable postal_code {
	type = string
	default = "1660003"
}
	
data "http" "my_address" {
	url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=${var.postal_code}"
}

output "address1" {
	value = jsondecode( data.http.my_address.body ).results[0].address1
}

output "address2" {
	value = jsondecode( data.http.my_address.body ).results[0].address2
}

output "address3" {
	value = jsondecode( data.http.my_address.body ).results[0].address3
}
