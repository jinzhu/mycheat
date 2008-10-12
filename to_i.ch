= to_i: |-
  "1".to_i         # => 1
  Integer("1")     # => 1
  
  "2two".to_i      # => 2
  Integer("2two")  # => ArgumentError: invalid value for Integer: "2two"
  
  "three".to_i     # => 0
  Integer("three") # => ArgumentError: invalid value for Integer: "three"
