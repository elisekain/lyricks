require "rails_helper"

describe User do
  it "is valid with an email, username and password" do
    user = User.new(
      email: "john@example.com",
      username: "johnnyboy",
      password: "johnpassword", password_confirmation: "johnpassword")
    expect(user).to be_valid
  end
  it "is invalid without an email" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
  it "is invalid without an username" do
    user = User.new(username: nil)
    user.valid?
    expect(user.errors[:username]).to include("can't be blank")
  end
  it "is invalid with a duplicate email address" do
    User.create(
    email: "john@example.com",
    username: "johnnyboy",
    password: "johnpassword", password_confirmation: "johnpassword")

    user = User.create(
      email: "john@example.com",
      username: "johnjacob",
      password: "jjpassword",
      password_confirmation: "jjpassword")
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end
end
