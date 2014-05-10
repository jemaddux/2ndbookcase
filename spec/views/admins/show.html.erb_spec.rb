require 'spec_helper'

describe 'admins/show' do
  before(:each) do
    @admin = assign(:admin, stub_model(Admin,
      :email => 'Email',
      :password_digest => 'Password Digest'
    ))
  end

  it 'renders attributes in <p>' do
    render
    rendered.should match(/Email/)
    rendered.should match(/Password Digest/)
  end
end
