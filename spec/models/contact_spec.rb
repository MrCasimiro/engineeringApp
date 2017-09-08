require 'rails_helper'

RSpec.describe Contact, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subject { described_class.new(name: "Teste", email: "teste@teste.com", message: "testestesteste")}

  it "is not valid without a name" do
  	subject.name = nil
  	expect(subject).to_not be_valid
  end
  it "is not valid without an email" do
  	subject.email = nil
  	expect(subject).to_not be_valid
  end
  it "is valid without a message" do
  	subject.message = nil
  	expect(subject).to be_valid
  end
  it "is valid without a nickname-invisible" do
  	subject.message = nil
  	expect(subject).to be_valid
  end
end
