require 'rails_helper'

RSpec.describe "blog_posts/edit", type: :view do
  before(:each) do
    @blog_post = assign(:blog_post, BlogPost.create!(
      :title => "MyString",
      :message => "MyText",
      :user => nil
    ))
  end

  it "renders the edit blog_post form" do
    render

    assert_select "form[action=?][method=?]", blog_post_path(@blog_post), "post" do

      assert_select "input#blog_post_title[name=?]", "blog_post[title]"

      assert_select "textarea#blog_post_message[name=?]", "blog_post[message]"

      assert_select "input#blog_post_user_id[name=?]", "blog_post[user_id]"
    end
  end
end
