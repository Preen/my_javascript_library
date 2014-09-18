require 'test_helper'

describe "static assets integration" do
  it "provides our_awesome_static_asset.js on the asset pipeline" do
    visit '/assets/base-functions.coffee'
    page.text.must_include 'StaticAsset = {};'
  end
end
