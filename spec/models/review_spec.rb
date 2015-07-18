require 'spec_helper'

describe Review do
  describe 'validations' do
    it { should validate_presence_of :content }
    it { should validate_presence_of :rating }
    # Below I'd change :user_id to :user, as it is thought
    # to be a better approach, according to
    # http://railsguides.net/belongs-to-and-presence-validation-rule1/
    # The spec's behavior should stay the same.
    # But I'm not doing it, in order to support the original spec.
    it { should validate_presence_of :user_id }
    # it { should validate_presence_of :product } # Commented out to support
                                                  # the original spec
    it { should belong_to :product }
    it { should belong_to :user }
  end
end
