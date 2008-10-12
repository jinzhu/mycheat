= rails_checklist: |-
  Source [ http://www.matthewpaulmoore.com/articles/1276-ruby-on-rails-code-quality-checklist#custom-finds ]
  
  Ruby on Rails Code Quality Checklist
  
  1. Each controller action only calls one model method other than an initial find or new.  
  (Make custom .new or .update methods in the model with all necessary). 
  2. Only one or two instance variables are shared between each controller and view. 
  3. All model and variable names are both immediately obvious (to a new developer) and as short as possible without using abbreviations. 
  4. All custom "finds" accessed from more than one place in the code use named_scope instead of a custom method. 
  5. A .find or .find_by_ is never called in a view or view helper. 
  6. There is zero custom code that duplicates functionality of a built-in function in rails. 
  7. Code has been aggressively DRYed during development. 
  8. All functionality used in two or more models has been turned into a library/module. 
  9. All logic duplicated between two or more apps has been turned into a gemified plugin. 
  10. STI is not used anywhere 
  11. Every design choice should yield the most simplistic design possible for the need of users at the current time.  
  No guesses for future functionality were designed into the application. 
  12. Close to full test coverage exists at the highest level of the application: on and between controller actions.  
  Coverage is highest for code used by the most number of end users. 
  13. All tests pass before code is merged into a shared repository. 
  14. Every fixed defect on a deployed product has tests added to prevent regression. 
  15. Every plugin installed has been code reviewed.
