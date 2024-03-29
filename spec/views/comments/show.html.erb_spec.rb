require 'rails_helper'

RSpec.describe "comments/show", :type => :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :commenter => "Commenter",
      :body => "MyText",
      :user_id => 1,
      :user => nil,
      :article => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Commenter/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
