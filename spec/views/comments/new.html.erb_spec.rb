require 'rails_helper'

RSpec.describe "comments/new", :type => :view do
  before(:each) do
    assign(:comment, Comment.new(
      :commenter => "MyString",
      :body => "MyText",
      :user_id => 1,
      :user => nil,
      :article => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_commenter[name=?]", "comment[commenter]"

      assert_select "textarea#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "input#comment_article_id[name=?]", "comment[article_id]"
    end
  end
end
