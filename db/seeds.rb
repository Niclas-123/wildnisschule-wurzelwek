SeminarType.create(name: "Fortbildung", description: "Fortbildungen dienen als Ergänzent für alle, die schon Erfahrungen gemacht haben")
SeminarType.create(name: "Wanderung", description: "Wanderungen können von allen, die Lust auf Natur haben, genossen werden!")
SeminarType.create(name: "Übergangsritual", description: "Übergangsrituale dienen als einstieg in die Erwachsenenwelt für Jugendliche.")

SeminarInstance.create(name: "Gerb Seminar", price: "200", seminar_type_id: 1)
SeminarInstance.create(name: "Kräuterwanderung", price: "100", seminar_type_id: 2)
SeminarInstance.create(name: "Ritual mit 5 Teilnehmern", price: "150", seminar_type_id: 3)

Location.create(name: "Eifel Hütte", latitude: 50.35531861055674, longitute: 6.568579067623879)

Seminar.create(location_id: 1, seminar_instance_id: 1, begins: "Thu, 02 Jan 2023", ends: "Thu, 03 Jan 2023")

Seminar.create(location_id: 1, seminar_instance_id: 2, begins: "Thu, 02 Jun 2023", ends: "Thu, 03 Jun 2023")

Seminar.create(location_id: 1, seminar_instance_id: 3, begins: "Thu, 02 May 2023", ends: "Thu, 03 May 2023")
