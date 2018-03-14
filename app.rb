require './config'

describe 'frango' do
  it "teste" do
    get '/'
    p response.code
  end
end
