require 'rails_helper'

RSpec.describe "blog_posts/new", type: :view do
  before(:each) do
    assign(:blog_post, BlogPost.new(
      :title => "MyString",
      :message => "MyText",
      :user => nil
    ))
  end

  it "renders new blog_post form" do
    render

    assert_select "form[action=?][method=?]", blog_posts_path, "post" do

      assert_select "input#blog_post_title[name=?]", "blog_post[title]"

      assert_select "textarea#blog_post_message[name=?]", "blog_post[message]"

      assert_select "input#blog_post_user_id[name=?]", "blog_post[user_id]"
    end
  end
end
