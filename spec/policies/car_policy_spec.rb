require 'spec_helper'

RSpec.describe CarPolicy, type: :policy do
  let(:user) { User.new(role: 'user') }
  let(:admin) { User.new(role: 'admin') }

  subject { described_class }

  permissions :create? do
    it "denies access if user is not admin" do
      expect(subject).not_to permit(user, Car.new)
    end

    it "allows access if user is admin" do
      expect(subject).to permit(admin, Car.new)
    end
  end

  permissions :destroy? do
    it "denies access if user is not admin" do
      expect(subject).not_to permit(user, Car.new)
    end

    it "allows access if user is admin" do
      expect(subject).to permit(admin, Car.new)
    end
  end
end
