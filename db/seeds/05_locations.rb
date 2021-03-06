l = Location.new(name: "Forsthaus Triesch", latitude: 50.991106364, longitude: 9.923719956, description: "Forsthaus Triesch liegt in Waldhessen Nähe Bebra, ein Ort,der von einem Schweizer mir seiner Frau seit vielen Jahren gehütet wird. Es gibt dort sowohl die Möglichkeit im Haus Schutz zu suchen in Form von Matratzenlagern, auch einem Vierbettzimmer, Toiletten,einer kleinen Küche, die wir aber möglichst wenig benutzen werden. 2 Feuerstellen - eine davon überdacht - ,lassen uns zusammenkommen, um Gemeinschaft und den Weg des Kreises zu erfahren und zu pflegen. Die angrenzenden Wälder erweitern unsere Welt, in die wir möglichst tief eintauchen. Hier können wir unser Zelt oder Tarp aufschlagen und unsere vielleicht ersten Nächte draussen verbringen. Der Ort ist ziemlich ungestört und bietet so einen geschütztern Rahmen für persönliche Erfahrungen.")
l.location_image.attach(io: File.open('app/assets/images/owl.jpg'), filename: 'owl.jpg')
l.save!

l = Location.new(name: "Pfadfinderhütte Kaltenborn", latitude: 50.430675, longitude: 7.020705, description: "Die Pfadfinderhütte Kaltenborn befindet sich ca. 30 km von Bonn entfernt in der Eifel in unmittelbarer Nähe zur hohen Acht. Sie ist ausgerüstet mit einer großen Küche, Duschen und Toiletten, 2 Gemeinschaftsräumen und einer nicht überdachten Feuerstelle. Das Gelände ist recht steil, der Wald oft durchbrochen von Wiesen und Hecken, ein Bach plätschert in der Nähe. Außer den Jägern, die abends öfter die nahegelegene Wildkammer befüllen, verirrt sich kaum jemand an diesen Platz.")
l.location_image.attach(io: File.open('app/assets/images/owl.jpg'), filename: 'owl.jpg')
l.save!

l = Location.new(name: "Wakini Waldkindergarten", latitude: 51.244958, longitude: 9.324475, description: " Der Waldkindergarten ist ein ziemlich wild - und pflanzenreicher, ursprünglicher Ort in der Nähe von Kassel. Hier gibt es kein „drinnen“, auch wenn bei extremem Regen eine Jurte Unterschlupf bieten kann. Eine Komposttoilette zeigt, wie wir unabhängig von Sanitäranlagen werden können, Wasser besorgen wir uns in Kanistern vom nahegelegenen Camp. Die umliegende Landschaft bietet zahlreichen Wildtieren Rückzugsmöglichkeiten und läßt uns nachts das Bellen eines Rehs oder eines Fuchses hören. Hier braucht jeder Teilnehmer ein Zelt, Tarp oder eine Hängematte für die Nacht.")
l.location_image.attach(io: File.open('app/assets/images/owl.jpg'), filename: 'owl.jpg')
l.save!

puts "Locations created"
