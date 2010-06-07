class RemoteVideoContent < ActiveRecord::Base
  has_one :strategy_item, :as => :content
end
