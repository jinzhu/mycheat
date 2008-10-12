= r4fy: |
  # double space a file
      $  ruby -pe 'puts' < file.txt
  # triple space a file
      $  ruby -pe '2.times {puts}' < file.txt
  # undo double-spacing (w/ and w/o whitespace in lines)
      $  ruby -lne 'BEGIN{$/=""}; puts $_' < file.txt
      $  ruby -ne 'BEGIN{$/=""}; puts $_.chomp' < file.txt
      $  ruby -e 'puts STDIN.readlines.to_s.gsub(//, "\n")' < file.txt

