require 'spec_helper'

describe GroupCreator do
  subject{described_class.new(controller)}
    describe '#save' do
      context 'group is valid' do
        let(:controller){double(group: build(:group))}
        it{expect {subject.save}.to change{group.cout}.by(1)}
        it{expect {subject.save}.to change{group.friends}.by(-1)}
    end
  end
end