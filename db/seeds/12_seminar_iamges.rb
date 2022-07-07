SeminarInstance.all.each do |s|
  SeminarImage.create(seminar_instance_id: s.id).image.attach(io: File.open('app/assets/images/nature-drawing.png'), filename: 'nature-drawing.png')
end

puts 'Seminar Images created'
