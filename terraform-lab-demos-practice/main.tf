# Example to demonstrate how `terraform fmt` works.
# Running `terraform fmt` will automatically align equals signs,
# fix indentation, and clean up spacing to make the code readable.
resource "random_string" "random"    {
  length = 10
  special = true
min_numeric = 6
      min_special = 2
min_upper = 3
}