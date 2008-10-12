= validations: |-
  Basic Validations
  http://ar.rubyonrails.com/classes/ActiveRecord/Validations/ClassMethods.html
  
  def validate
    unless name && name =~ /^\w+$/
      errors.add(:name, "is missing or valid")
    end
  end
  
  def validate_on_create
    if User.find_by_name(name)
      errors.add(:name, "is already being used")
    end
  end
  
  
  validates_acceptance_of
    Validates that the value of the attribute is the string "1" or the value of the :accept parameter. Useful for checkboxes.
  validates_associated
  validates_confirmation_of
  validates_each
  validates_exclusion_of
  validates_format_of
  validates_inclusion_of
  validates_length_of
  validates_numericality_of
  validates_presence_of
  validates_size_of
  validates_uniqueness_of
  
  DEFAULT_VALIDATION_OPTIONS = { :on => :save, :allow_nil => false, :allow_blank => false, :message => nil
  ALL_RANGE_OPTIONS = [ :is, :within, :in, :minimum, :maximum ].freeze
  ALL_NUMERICALITY_CHECK = { :greater_than => '>', :greater_than_or_equal_to => '>=', :equal_to => '==', :less_than => '<', :less_than_or_equal_to => '<=', :odd => 'odd?', :even => 'even?' }.freeze
