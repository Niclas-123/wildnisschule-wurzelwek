SeminarType.new(name: "Fortbildungen", description: "Fortbildungen sind Wochenenden, die sich einem speziellen Thema widmen um dieses zu vertiefen. Dabei spielen schon vorhandene Kenntnisse nur eine untergeordnete Rolle.").save(validate: false)

SeminarType.new(name: "Wanderungen", description: "Unsere Wanderungen folgen einem Urinstinkt des Menschen - wie  Nomaden umherzustreifen, einem inneren Ruf folgend. Deshalb werden diese Tage gerne auch in  Stille verbracht um ganz Ohr und Nase für die Natur zu sein. Dadurch unterscheiden sie sich von üblichen Wanderungen, bei denen im Nachhinein von der uns umgebenden Natur kaum etwas wahrgenommen wurde. Es werden dabei unterschiedliche Schwerpunkte gelegt wie z.B. Spurenlesen, Naturmentoring, Meditation und Erweiterung der Sinne.").save(validate: false)

SeminarType.new(name: "Übergangsrituale", description: "Übergangsrituale, besonders für Jugendliche, wurden schon immer und überall praktiziert und werden in der heutigen Zeit immer wichtiger, um den Weg vom Kind über den Jugendlichen zum Erwachsenen zu würdigen.").save(validate: false)

SeminarType.all.each do |s|
  s.image.attach(io: File.open('app/assets/images/owl.jpg'), filename: 'owl.jpg')
end

puts "Seminar Types create"
