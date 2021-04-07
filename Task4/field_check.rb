passport_data = File.read('passport_data').split("\n\n")
mandatory_fields = ["byr","iyr","eyr","hgt","hcl","ecl","pid"]
valid_passports = 0

passport_data.each do |passport|
  passport = passport.split(/\s/)
  # p passport.class
  given_fields = passport.map do |attribute|
    # p attribute
    attribute.split(":")[0]
  end
  # p given_fields.class
  missing_fields = mandatory_fields - given_fields
  if missing_fields.empty?
    valid_passports += 1
  end
end

p valid_passports
