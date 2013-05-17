require 'spec_helper'

describe 'routes', :type => :controller do
  context 'root route' do
    it 'is routable' do
      expect(:get => '/').to be_routable
    end

    it 'routes to home#index' do
      expect(:get => '/').to route_to("home#index")
    end
  end

  context '/signup' do
    it 'is routable via post request' do
      expect(:post => 'signup').to be_routable
    end

    it 'is not routable via get request' do
      expect(:get => 'signup') .not_to be_routable
    end
  end
end