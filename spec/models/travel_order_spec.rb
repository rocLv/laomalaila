require 'rails_helper'

RSpec.describe TravelOrder, type: :model do
  it { validate_presence_of(:estimate_departure_time) }

  it { validate_presence_of(:from) }

  it { validate_presence_of(:to) }

  it { validate_presence_of(:budget) }

  it { should allow_value('0290-23456789', '0759-3900873').for(:fax) }

  it { should_not allow_value('019-123456', '010-123456789').for(:fax) }

  it do
    should allow_value('13652885999').for(:phone)
  end

  it { allow_value('roc@g.cn', 'sdf@sd-df.com').for(:email) }

  it { not allow_value('rocg.cn', 'roc@.cn').for(:email) }

  let(:travel_order) { create(:travel_order) }

  it "returns transport" do
    travel_order.bus_business!
    expect(travel_order.transports).to eq('bus_business')
    expect(travel_order.transport).to eq('商务大巴')
  end

  it 'returns hotel price tier between 200 to 300 RMB' do
    travel_order.between_200_300!

    expect(travel_order.hotel_price_tier).to eq('200 - 300元之间')
  end

  it 'returns hotel price tier above 400 RMB' do
    travel_order.above_400!

    expect(travel_order.hotel_price_tier).to eq('400元以上')
  end

  it 'needs to pick up by taxi' do
    travel_order.taxi!
    expect(travel_order.pickup).to eq('需要我们为您安排出租车接机/车')
  end
end
