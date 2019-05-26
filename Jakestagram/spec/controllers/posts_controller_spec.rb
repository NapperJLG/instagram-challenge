require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      post :create, params: { post: { text: "Hello, world!" } }
      expect(response).to redirect_to(posts_url)
    end

    it "creates a post" do
      post :create, params: { post: { text: "Hello, world!" } }
      post = Post.find_by(text: "Hello, world!")
      expect(post.text).to eq "Hello, world!"
    end
  end
  
  describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
