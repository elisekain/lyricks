require "rails_helper"

describe Card do
  it "is valid with a title and lyrics" do
    card = Card.new(
      title: "Summer Girls",
      lyrics: "Yeah...I like it when the girls stop by.. In the summer Do you remember, Do you remember? ...when we met..That summer?? New Kids On The block,had a bunch of hits Chinese food makes me sick. And I think it's fly when girls stop by for the summer,for the summer I like girls that wear Abercrombie and Fitch, I'd take her if I had one wish, But she's been gone since that summer.. Since that summer")
    expect(card).to be_valid
  end

  it "is invalid without a title" do
    card = Card.new(title: nil, lyrics: "Yeah")
    card.valid?
    expect(card.errors[:title]).to include("can't be blank")
  end

  it "is invalid without lyrics" do
    card = Card.new(title: "Summer Girls", lyrics: nil)
    card.valid?
    expect(card.errors[:lyrics]).to include("can't be blank")
  end

  it "creates a string of lyrics longer than 2400 characters" do
    card = Card.new(
      title: "Summer Girls",
      lyrics: "Yeah...I like it when the girls stop by.. In the summer Do you remember, Do you remember? ...when we met..That summer?? New Kids On The block,had a bunch of hits Chinese food makes me sick. And I think it's fly when girls stop by for the summer,for the summer I like girls that wear Abercrombie and Fitch, I'd take her if I had one wish, But she's been gone since that summer.. Since that summer")
    expect(Card.lengthen(card.lyrics).length).to be > 2400
  end
end
