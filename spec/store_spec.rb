require 'rails_helper'

describe Store do
  before(:each) do
  Store.clear
end

describe '#name' do
  it 'returns the store name' do
    store = Store.new({:name => 'Mercer Island'})
    expect(store.name).to eq 'Mercer Island'
  end
end
end
