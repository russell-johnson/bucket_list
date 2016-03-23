require 'rails_helper'
RSpec.describe Item, type: :model do
  describe 'attributes' do
    it { should respond_to :name }
    it { should respond_to :due_date }
    it { should respond_to :location }
  end
end
