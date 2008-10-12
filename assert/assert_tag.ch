= assert_tag: "# 'cheat assertions' for the rest

  

  assert_tag(*opts)

  

== Asserts that there is a tag/node/element in the body of the response that meets all of the given conditions. The conditions parameter must be a hash of any of the following keys (all are optional):

  
    * :tag: the node type must match the corresponding value
    * :attributes: a hash. The node\xE2\x80\x98s attributes must match the corresponding values in the hash.
    * :parent: a hash. The node\xE2\x80\x98s parent must match the corresponding hash.
    * :child: a hash. At least one of the node\xE2\x80\x98s immediate children must meet the criteria described by the hash.
    * :ancestor: a hash. At least one of the node\xE2\x80\x98s ancestors must meet the criteria described by the hash.
    * :descendant: a hash. At least one of the node\xE2\x80\x98s descendants must meet the criteria described by the hash.
    * :sibling: a hash. At least one of the node\xE2\x80\x98s siblings must meet the criteria described by the hash.
    * :after: a hash. The node must be after any sibling meeting the criteria described by the hash, and at least one sibling must match.
    * :before: a hash. The node must be before any sibling meeting the criteria described by the hash, and at least one sibling must match.
== * :children: a hash, for counting children of a node. Accepts the keys:
          o :count: either a number or a range which must equal (or include) the number of children that match.
          o :less_than: the number of matching children must be less than this number.
          o :greater_than: the number of matching children must be greater than this number.
          o :only: another hash consisting of the keys to use to match on the children, and only matching children will be counted.
    * :content: the textual content of the node must match the given value. This will not match HTML tags in the body of a tag\xE2\x80\x94only text.

  

== Conditions are matched using the following algorithm:

  
    * if the condition is a string, it must be a substring of the value.
    * if the condition is a regexp, it must match the value.
    * if the condition is a number, the value must match number.to_s.
    * if the condition is true, the value must not be nil.
    * if the condition is false or nil, the value must be nil.

  

  Examples

  
  \# Assert that there is a \"span\" tag
  assert_tag :tag => \"span\"

  
  \# Assert that there is a \"span\" tag with id=\"x\"
  assert_tag :tag => \"span\", :attributes => { :id => \"x\" }

  
  \# Assert that there is a \"span\" tag using the short-hand
  assert_tag :span

  
  \# Assert that there is a \"span\" tag with id=\"x\" using the short-hand
  assert_tag :span, :attributes => { :id => \"x\" }

  
  \# Assert that there is a \"span\" inside of a \"div\"
  assert_tag :tag => \"span\", :parent => { :tag => \"div\" }

  
  \# Assert that there is a \"span\" somewhere inside a table
  assert_tag :tag => \"span\", :ancestor => { :tag => \"table\" }

  
  \# Assert that there is a \"span\" with at least one \"em\" child
  assert_tag :tag => \"span\", :child => { :tag => \"em\" }

  
  \# Assert that there is a \"span\" containing a (possibly nested)
  \# \"strong\" tag.
  assert_tag :tag => \"span\", :descendant => { :tag => \"strong\" }

  
  \# Assert that there is a \"span\" containing between 2 and 4 \"em\" tags
  \# as immediate children
  assert_tag :tag => \"span\",
             :children => { :count => 2..4, :only => { :tag => \"em\" } }

  
  \# Get funky: assert that there is a \"div\", with an \"ul\" ancestor
  \# and an \"li\" parent (with \"class\" = \"enum\"), and containing a
  \# \"span\" descendant that contains text matching /hello world/
  assert_tag :tag => \"div\",
             :ancestor => { :tag => \"ul\" },
             :parent => { :tag => \"li\",
                          :attributes => { :class => \"enum\" } },
             :descendant => { :tag => \"span\",
                              :child => /hello world/ }
"
