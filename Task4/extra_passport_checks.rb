# Working without a loop to check logic against sample data

mandatory_fields = ["byr","iyr","eyr","hgt","hcl","ecl","pid"]

# Passport with one field missing

passport = ["hgt:183cm", "cid:98", "byr:1953", "hcl:#866857", "eyr:2021", "iyr:2012", "pid:158898193"]

passport_fields = passport.map do |attribute|
  attribute.split(":")[0]
end

# Check passport_fields against mandatory_fields
field_check = mandatory_fields - passport_fields

# If the field_check array is empty, all mandatory fields can be found in the given passport
# If not, there is a field that is in mandatory_fields but not passport_fields, the passport is then invalid
if field_check.empty?
  puts "Yay passport is valid"
else
  puts "Missing field(s): #{field_check}"
  puts "Passport not valid"
end

puts

# Valid passport

passport2 = ["ecl:gry", "pid:860033327", "eyr:2020", "hcl:#fffffd", "byr:1937", "iyr:2017", "cid:147", "hgt:183cm"]

passport_fields2 = passport2.map do |attribute|
  attribute.split(":")[0] # map transformation
end

field_check2 = mandatory_fields - passport_fields2

if field_check2.empty?
  puts "Yay passport is valid"
else
  puts "Missing field(s): #{field_check2}"
  puts "Passport not valid"
end

puts

# Passport with missing fields (plural)

passport3 = ["hcl:#ae17e1", "iyr:2013", "eyr:2024", ]

passport_fields3 = passport3.map do |attribute|
  attribute.split(":")[0] # map transformation
end

field_check3 = mandatory_fields - passport_fields3

if field_check3.empty?
  puts "Yay passport is valid"
else
  puts "Missing field(s): #{field_check3}"
  puts "Passport not valid"
end