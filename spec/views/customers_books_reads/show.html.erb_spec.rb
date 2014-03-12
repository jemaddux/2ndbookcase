require 'spec_helper'

describe "customers_books_reads/show" do
  before(:each) do
    @customers_books_read = assign(:customers_books_read, stub_model(CustomersBooksRead,
      :customer_id => 1,
      :book_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
