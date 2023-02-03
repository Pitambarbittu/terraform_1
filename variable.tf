variable "cloud" {
    type = list(string)
}

variable "numb" {
  type = number
  default = "500"
}


variable "bool" {
  type = bool
  default = true
}

variable "map" {
  type = map(string)
  
}

#---------------------object type------------------
variable "obj_type" {
  type = object(
    {
        s1= string,
        s2= number,
        s3= bool,
        description = string
       
    }
  )
}

