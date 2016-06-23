require "administrate/field/froala"

describe Administrate::Field::Froala do
  describe "#to_partial_path" do
    it "returns a partial based on the page being rendered" do
      page = :show
      field = Administrate::Field::Froala.new(:relation, "/a.jpg", page)

      path = field.to_partial_path

      expect(path).to eq("/fields/froala/#{page}")
    end
  end
end
