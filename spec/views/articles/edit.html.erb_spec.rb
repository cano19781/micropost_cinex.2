require 'rails_helper'

RSpec.describe "articles/edit", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "MyString",
      :text => "MyText",
      :user_id => 1,
      :user => nil
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_text[name=?]", "article[text]"

      assert_select "input#article_user_id[name=?]", "article[user_id]"

      assert_select "input#article_user_id[name=?]", "article[user_id]"
    end
  end
end
