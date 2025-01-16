require "test_helper"

class StarTest < ActiveSupport::TestCase
  
  def setup
    @star = Star.new(name: "Betelgeuse", description: "A red supergiant star.",
                     distance: "642.5 light-years away", lifespan: "10 million-year lifespan!", 
                     fact: "Betelgeuse is expected to go supernova in the next", size: "887 times the size of Earth")
  end

# Presence check for each attribute
  test "name should be present" do
    @star.name = "   "
    assert_not @star.valid?
  end

  test "description should be present" do
    @star.description = "   "
    assert_not @star.valid?
  end

  test "distance should be present" do
    @star.distance = "   "
    assert_not @star.valid?
  end

  test "lifespan should be present" do
    @star.lifespan = "   "
    assert_not @star.valid?
  end

  test "fact should be present" do
    @star.fact = "   "
    assert_not @star.valid?
  end

  test "size should be present" do
    @star.size = "   "
    assert_not @star.valid?
  end

 # Character limit check for each attribute
  test "star name should not be too long" do
    @star.name = "a" * 26
    assert_not @star.valid?
  end

  test "star description should not be too long" do
    @star.description = "a" * 400
    assert_not @star.valid?
  end

  test "star distance should not be too long" do
    @star.distance = "a" * 50
    assert_not @star.valid?
  end

  test "star fact should not be too long" do
    @star.fact = "a" * 400
    assert_not @star.valid?
  end

  test "star size should not be too long" do
    @star.size = "a" * 50
    assert_not @star.valid?
  end

  test "star lifespan should not be too long" do
    @star.lifespan = "a" * 150
    assert_not @star.valid?
  end

  test "star name should be unique" do 
    duplicate_user = @star.dup
    @star.save
    assert_not duplicate_user.valid?
  end
end
