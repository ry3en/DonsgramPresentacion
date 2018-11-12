require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :tittle => "MyText",
      :body => "MyText",
      :user => nil
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "textarea[name=?]", "post[tittle]"

      assert_select "textarea[name=?]", "post[body]"

      assert_select "input[name=?]", "post[user_id]"
    end
  end
end
