#---------------------local file-----------------------------------------------------

resource "local_file" "file_1" {
    filename = "file1.txt"
    content = "hello world"
  
}

resource "local_file" "file_2" {
    filename = "file2.txt"
    content = "hello cloud"
  
}

resource "local_file" "file_3" {
    filename = "file3.txt"
    content = "hello EQ"
  
}                             

#------------------random id---------------------------------------------------------------

resource "local_file" "file_5" {
    filename = "file5.txt"
    content = "${random_id.random_file.hex}"
  
}

resource "random_id" "random_file" {
   byte_length = 8
  
}




#---------------------variable and list variable-------------------------------------------
resource "local_file" "variable_file" {
    filename = "variable1.txt"
    content = var.cloud[0]  
}


#---------------variable number type--------------------------------

resource "local_file" "number_type" {
  filename = "file_numb.txt"
  content = var.numb
}

#-----------------bool type variable--------------------------------


resource "local_file" "bool_type" {
  filename = "file_bool.txt"
  content = var.bool
}

#-----------------map type variable---------------------------------

resource "local_file" "map_type" {
  filename = var.map["filename"]
  content = var.map["content"]
}

#--------------------object type variable---------------------------

resource "local_file" "obj_type1" {
    filename = var.obj_type.s1
    content = var.obj_type.s2
  
}