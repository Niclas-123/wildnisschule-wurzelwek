SeminarType.create(name: "Fortbildungen", description: "Fortbildungen sind Wochenenden, die sich einem speziellen Thema widmen um dieses zu vertiefen. Dabei spielen schon vorhandene Kenntnisse nur eine untergeordnete Rolle.").image.attach(io: File.open('app/assets/images/owl.jpg'), filename: 'owl.jpg')

SeminarType.create(name: "Wanderungen", description: "Wanderungen folgen einem Urinstinkt des Menschen - zu nomadisieren und umherzustreifen. Deshalb werden diese Tage gerne auch in innerer Ruhe verbracht, um ganz Ohr und Nase für die Natur zu sein.").image.attach(io: File.open('app/assets/images/owl.jpg'), filename: 'owl.jpg')

SeminarType.create(name: "Übergangsrituale", description: "Übergangsrituale, besonders für Jugendliche, wurden schon immer und überall praktiziert und werden in der heutigen Zeit immer wichtiger, um den Weg vom Kind über den Jugendlichen zum Erwachsenen zu würdigen.").image.attach(io: File.open('app/assets/images/owl.jpg'), filename: 'owl.jpg')

puts "Seminar Types created"
