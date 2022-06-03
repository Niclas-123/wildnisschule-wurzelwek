SeminarType.create(name: "Fortbildungen", description: "Fortbildungen dienen als Ergänzent für alle, die schon Erfahrungen gemacht haben")
SeminarType.create(name: "Wanderungen", description: "Wanderungen können von allen, die Lust auf Natur haben, genossen werden!")
SeminarType.create(name: "Übergangsrituale", description: "Übergangsrituale dienen als einstieg in die Erwachsenenwelt für Jugendliche.")

SeminarInstance.create(name: "Gerb Seminar", price: "200", seminar_type_id: 1, description: "Hier lernt man Gerben")
SeminarInstance.create(name: "Kräuterwanderung", price: "100", seminar_type_id: 2, description: "Hier lernt man Krauter")
SeminarInstance.create(name: "Ritual mit 5 Teilnehmern", price: "150", seminar_type_id: 3, description: "Hier lernt man Ritule")

Location.create(name: "Eifel Hütte", latitude: 50.35531861055674, longitute: 6.568579067623879)

Seminar.create(location_id: 1, seminar_instance_id: 1, start_date: "Thu, 02 Jan 2023", end_date: "Thu, 03 Jan 2023")
Seminar.create(location_id: 1, seminar_instance_id: 2, start_date: "Thu, 02 Jun 2023", end_date: "Thu, 03 Jun 2023")
Seminar.create(location_id: 1, seminar_instance_id: 3, start_date: "Thu, 02 May 2023", end_date: "Thu, 03 May 2023")

User.create(email: "inescollmer@web.de", password: "fayaprilic123", admin: true)
