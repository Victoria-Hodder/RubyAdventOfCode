passport_data = File.read('passport_data').split("\n\n")
mandatory_fields = ["byr","iyr","eyr","hgt","hcl","ecl","pid"]
valid_passports = 0

def passport_fields_valid(passport_fields)
  passport_fields.all? do |key, value|
    p "#{key}: #{value}"
    ret = case key
      when "byr"
        (value.to_i >= 1920) && (value.to_i <= 2002)
        # p "#{key}: #{value}"
      when "iyr" 
        value.length == 4 && (value.to_i >= 2010) && (value.to_i <= 2020)
      when "eyr"
        value.length == 4 && (value.to_i >= 2020) && (value.to_i <= 2030)
      when "hgt"
        # (value.match(/[0-9]{3}cm/) && 150 <= x <= 193) # was soll x dann sein?!
        # || (value.match(/[0-9]{3}in/) && 59 <= x <= 76)
        (value.match(/[0-9]{3}cm/)) || (value.match(/[0-9]{3}in/))
      when "hcl"
        value.length == 7 && value[0] == "#" && (value[1..6].match(/[a-f0-9]{6}/))
      when "ecl"
        value.length == 3 && value.match(/amb|blu|gry|grn|hzl|oth/)
        # p "#{key}: #{value}"
      when "pid" 
        value.length == 9 && value.match(/[0-9]{9}/)
    end
    p "#{key}: #{value} ----- #{ret}"
  end
  # true
end


passport_data.each do |passport|
  passport = passport.split(/\s/)
  given_data = passport.map do |attribute|
    field, field_content = attribute.split(":")
  end
  hash = given_data.to_h
  given_fields = hash.keys
  missing_fields = mandatory_fields - given_fields
  valid_passports += 1 if missing_fields.empty? && passport_fields_valid(hash)
  # p "#{given_fields.class}"
end

p valid_passports
