class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include PersonalInfo

  has_many :scores
  embeds_many :parents

  field :email, type: String
  field :name, type: String
  field :last_name, type: String
  field :mobile_phone, type: String
  field :work_place, type: String
  field :age, type: Integer
  field :is_active, type: Boolean

  accepts_nested_attributes_for :scores

  scope :adults, -> { where(age: {'$gte': 18} ) }
  scope :recently_adults, -> { where(age: 18) }

  validates_presence_of :email, :name
  validates :email, uniqueness: true

  def full_name
    "#{name} #{last_name}"
  end
end
