require 'spec_helper'

describe Review do
  describe 'validations' do
    it { should validate_presence_of :content }
    it { should validate_presence_of :rating }
    # Below I changed :user_id to :user, as it is thought
    # to be a better approach, according to
    # http://railsguides.net/belongs-to-and-presence-validation-rule1/
    # The spec's behavior should stay the same
    it { should validate_presence_of :user }
    it { should validate_presence_of :product }
    it { should belong_to :product }
    it { should belong_to :user }
  end
end
