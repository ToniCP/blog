module PersonalInfo
  extend ActiveSupport::Concern

  included do
    field :relatives_number, type: Hash
  end
end
