
module "s3_collins" {
  source      = "./modules/s3"
  bucket_name = "modules-collinsdemobucket-12042025"
}


module "s3_bobby" {
  source      = "./modules/s3"
  bucket_name = "modules-bobbydemobucket-04052025"
}
