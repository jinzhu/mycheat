= jquery: |
  (from jQuery in Action)
  
  Basic CSS selectors
  
  *    - any element
  E    - elements with tag E
  E F  - elements with tag F that are descendants of E
  E>F  - elements with tag F that are direct children of E
  E+F  - elements F immediately preceded by sibling E
  E~F  - elements F preceded by any sibling E
  E:has(F) - elements E that have at least one decedent with tag F
  E.C  - elements with class name C. omitting E is the same as *.C
  E#I  - elements E with id I. omitting E is the same as *#I
  E[A] - elements with attribute A of any value
  E[A=V]  - elements with attribute A whose value is exactly V
  E[A^=V] - elements with attribute A whose value begins with V
  E[A$=V] - elements with attribute A whose value ends with V
  E[A*=V] - elements with attribute A whose value contains V
  
  Advanced positional selectors
  
  :first - first match of the page
  :last  - last match of the page
  :first-child - first child element
  :last-child - last child element
  :only-child - elements that have no siblings
  :nth-child(n) - nth child element
  :nth-child(even|odd) - even or odd children
  :nth-child(Xn+Y) - nth child element computed by formula
  :even and :odd - even and odd elements page wide
  :eq(n) - the nth matching element
  :gt(n) - elements after (and excluding) nth matching element
  :lt(n) - elements before (and excluding) nth matching element
  
  Custom selectors
  
  :animated - elements that are under animated control
  :button - any button
  :checkbox - only check box elements
  :checked - check boxes or radio buttons that are checked
  :contains(foo) - elements containing text foo
  :disabled - form elements that are disabled
  :enabled - form elements that are enabled
  :file - selects all file elements
  :header - all elements h1..h6
  :hidden - elements that are hidden
  :image - form images
  :input - form elements
  :not(filter) - negates the specified filter
  :parent - elements that have children
  :password - password elements
  :radio - radio elements
  :reset - reset buttons
  :selected - option elements that are selected
  :submit - submit buttons
  :text - text elements (input[type=text])
  :visible - elements that are visible
  
     
  

