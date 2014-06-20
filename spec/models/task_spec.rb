require 'spec_helper'

RSpec.describe Task, :type => :model do
  it 'has a valid factory' do 
  	expect(FactoryGirl.create(:task)).to be_valid
  end
  it 'should be not valid if missing required data' do 
  	task = FactoryGirl.build(:task,description:nil)
  	expect(task).not_to be_valid
  end

  it 'should not have a description with length > 255' do 
  	task = FactoryGirl.build(:task,description:Faker::Lorem.characters(257))
  	expect(task).not_to be_valid
  end
end
