SeminarType.create(name: "Fortbildungen", description: "Fortbildungen dienen als Ergänzent für alle, die schon Erfahrungen gemacht haben")
SeminarType.create(name: "Wanderungen", description: "Wanderungen können von allen, die Lust auf Natur haben, genossen werden!")
SeminarType.create(name: "Übergangsrituale", description: "Übergangsrituale dienen als einstieg in die Erwachsenenwelt für Jugendliche.")

EquipmentList.create(content: "Du brauchst einen Schlafsack!")
EquipmentList.create(content: "Du brauchst ein Zelt!")

SeminarInstance.create(name: "Gerb Seminar", price: "200", seminar_type_id: 1, description: "Hier lernt man Gerben", equipment_list_id: 1)
SeminarInstance.create(name: "Kräuterwanderung", price: "100", seminar_type_id: 2, description: "Hier lernt man Krauter", equipment_list_id: 1)
SeminarInstance.create(name: "Ritual mit 5 Teilnehmern", price: "150", seminar_type_id: 3, description: "Hier lernt man Ritule", equipment_list_id: 2)

Location.create(name: "Eifel Hütte", latitude: 50.35531861055674, longitute: 6.568579067623879, description: "Die Eifelhütte ist eine der schönsten im ganzen Land!")

Seminar.create(location_id: 1, seminar_instance_id: 1, start_date: "Thu, 02 Jan 2023", end_date: "Thu, 03 Jan 2023")
Seminar.create(location_id: 1, seminar_instance_id: 2, start_date: "Thu, 02 Jun 2023", end_date: "Thu, 03 Jun 2023")
Seminar.create(location_id: 1, seminar_instance_id: 3, start_date: "Thu, 02 May 2023", end_date: "Thu, 03 May 2023")

Booking.create(seminar_id: 1, first_name: "Niclas", last_name: "Collmer", email: "niclascollmer@web.de", tel: "015781642371")
Booking.create(seminar_id: 2, first_name: "Niclas", last_name: "Collmer", email: "niclascollmer@web.de", tel: "015781642371")
Booking.create(seminar_id: 3, first_name: "Niclas", last_name: "Collmer", email: "niclascollmer@web.de", tel: "015781642371")

User.create(email: "inescollmer@web.de", password: "fayaprilic123", admin: true, first_name: "Ines", last_name: "Collmer", tel: "017624810363", adress: "Schützenstrasse 9", zip_code: "42799", birth_year: "1966")

User.create(email: "niclascollmer@web.de", password: "collmer123", first_name: "Niclas", last_name: "Collmer", tel: "015781642371", adress: "Schützenstrasse 9", zip_code: "42799", birth_year: "1999")

Post.create(title: "Der Weg der Wurzel", content: "Hier steht ein bisschen text")
Post.create(title: "Warum die Natur...?", content: "Hier steht ein bisschen text")

GuestbookEntry.create(content: "Das Seminar war total toll!", user_id: 1, seminar_instance_id: 1)
GuestbookEntry.create(content: "Das Seminar war auch total toll!", user_id: 1, seminar_instance_id: 2)
GuestbookEntry.create(content: "Und das war auch toll!", user_id: 1, seminar_instance_id: 3)
