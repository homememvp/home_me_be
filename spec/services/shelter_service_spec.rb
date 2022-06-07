require 'rails_helper'

RSpec.describe ShelterService do
  it "get all shelters", :vcr do
    shelters = ShelterService.get_all_shelters

    expect(shelters).to be_an(Array)
    expect(shelters.first).to be_a(Hash)
    expect(shelters.first).to have_key(:attributes)
  end

  it "gets all shelters by zipcode", :vcr do

    shelters = ShelterService.get_shelters_by_zipcode("20011")

    expect(shelters).to be_an(Array)
    expect(shelters.first).to be_a(Hash)
    expect(shelters.first).to have_key(:attributes)
  end
end
