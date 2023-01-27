json.extract! card, :id, :name, :categoty, :generation, :armor, :damage, :crit, :discription, :created_at, :updated_at
json.url card_url(card, format: :json)
