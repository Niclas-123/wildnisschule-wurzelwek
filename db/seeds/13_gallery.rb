Gallery.create
@gallery = Gallery.first

10.times do
  g = @gallery.gallery_images.new
  g.image.attach(io: File.open('app/assets/images/nature-drawing.png'), filename: 'nature-drawing.png')
  g.save!
end

puts '10 Images created'
