class AddSubtitleToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :subtitle, :string
  end
end


Video.all.each do |video|
  video.subtitle = "Lorem ipsum dolor sit a"
  video.rating = rand(1..5) 
  video.uploader="Kelly Gruber"
  video.save 
end