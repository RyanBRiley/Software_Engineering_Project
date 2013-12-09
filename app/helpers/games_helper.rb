module GamesHelper
 def icon_for(game, options = { size: 25 })
    size = options[:size]
    image_tag(asset_path("#{game.id}.jpg"), alt: "", class: "icon")
  end
end
