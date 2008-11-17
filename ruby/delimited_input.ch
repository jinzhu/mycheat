= Delimited input:
    %q{blah}                  # same as 'blah' but no interpolation
    %Q , %{blah}              # or %Q{blah} # same as "blah" but igornes " and '
    %W , %w{blah blah}        # same as "blah blah".split
    %r{blah}                  # same as /blah/
    %x{ls}                    # same as `ls`

