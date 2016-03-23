require 'rails_helper'
RSpec.describe BList, type: :model do
  describe 'attributes' do
    it { should respond_to :name}
    it { should respond_to :date_created }
    it { should respond_to :date_completed}
  end
end
