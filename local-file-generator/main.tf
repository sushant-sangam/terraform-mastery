resource "local_file" "my_file" {
    filename = "devops.txt"
    content = "This is a terraform generated file"
}