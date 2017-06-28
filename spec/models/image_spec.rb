require 'rails_helper'

RSpec.describe Image, type: :model do
  it { should validate_presence_of :link}
  it { should have_many :sentences}
end
