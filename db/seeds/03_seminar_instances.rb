s = SeminarInstance.new(
  name: "Pflanzenwissen",
  seminar_type_id: 1,
  description: "Seit jeher bilden Wildpflanzen  zu 80% die Nahrungsgrundlage für den Menschen,höchstens 20% stammen von tierischen Quellen.Das Wissen um die Eßbarkeit  schlummert tief im Verborgenen von jedem von uns,und das Vertrauen in das sichere Erkennen kann wieder wachsen.Wir legen die Grundlagen für das Bestimmen der wichtigsten eßbaren Kräuter ,stellen einfaches Kochgeschirr her,knüpfen ein Band und genießen unsere grünen Wilden mit dem Gaumen .Auch der Heilaspekt,die grüne Apotheke der Natur,wird nicht zu kurz kommen,können wir doch wie jedes Wildtier uns die Heilkraft der Pflanzen zunutze machen.Spielerisch und nachhaltig verwurzeln wir die Grundlagen,sodaß ein jeder auch nach dem Seminar sich an das Erlernte erinnern kann.",
  price_cents: 10000,
  breakfast: 3,
  lunch: 3,
  dinner: 1
)
s.image_1.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.image_2.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.save!
s.seminar_contents.create(content: "eßbare Wildpflanzen sicher bestimmen und erkennen")
s.seminar_contents.create(content: "Pflanzenfamilien zuordnen")
s.seminar_contents.create(content: "dadurch auf Inhaltsstoffe schließen")
s.seminar_contents.create(content: "Kochgeschirr herstellen")
s.seminar_contents.create(content: "Schnüre drillen")
s.seminar_contents.create(content: "Spiele zum Vertiefen des Wissens")
s.seminar_contents.create(content: "Heilpflanzen kennenlernen")



s = SeminarInstance.new(
  name: "Die wunderbare Welt der Vögel",
  seminar_type_id: 1,
  description: "Wer sehnt sich nicht nach dem ersten Amselgesang im Frühling? Wer verbindet mit dem Ruf der Kraniche nicht Abenteuer, Reise, Aufbruch, Heimkehr? Vögel sind allgegenwärtig, immer und überall – meist entschlüpfen sie unserer Wahrnehmung und sind „nur“ Teil des allgemeinen Hintergrundrauschens.
  Um unsere Verbindung zu ihnen und unsere Wahrnehmung für sie zu vertiefen lassen wir uns berühren -im Innen und im Außen .und lernen ganz nebenbei noch mit den Kleinen die ganz große universelle  Sprache der Natur kennen .Wir lernen Vögel am Flugbild zu unterscheiden, Gesänge und verschiedene Rufarten ,Federn zuzuordnen,Schnäbel bestimmen,Ökologie und Strategie der Gefiederten.Wir erkennen Gemeinsamkeiten und Unterschiede, sodaß Grundlagen gelegt werden um später zuhause den Weg in die Vogelwelt weiterzugehen.",
  price_cents: 10000,
  breakfast: 3,
  lunch: 3,
  dinner: 1
)
s.image_1.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.image_2.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.save!
s.seminar_contents.create(content: "Gesänge und Rufarten unterscheiden")
s.seminar_contents.create(content: "Federkunde")
s.seminar_contents.create(content: "Flugbilder erkennen")
s.seminar_contents.create(content: "ökologische Zusammenhänge")
s.seminar_contents.create(content: "Wahrnehmungs- und Bewußtseinswerweiterung")
s.seminar_contents.create(content: "Sprache des Waldes")


s = SeminarInstance.new(
  name: "Übergangsritual Jugendliche",
  seminar_type_id: 3,
  description: "Oft stehen wir im Leben an einer Schwelle, einem Übergang in eine neue Lebensphase, die sich mit dem Wunsch oder Drang nach Veränderung ankündigt, wie ein Fluß, der sich ein neues Bett sucht, da das alte nicht mehr seinem Strömen entspricht. Diese Veränderungen brauchen Zeit und einen Rahmen, um sich wie auf einer neu gezeichneten Landkarte zu manifestieren.
  Gerade für Jugendliche auf dem Weg ins Erwachsen-werden fehlt oft dieser Rahmen und die Suchenden wie die Begleiter - oft Eltern – fühlen sich ob der Veränderungen hilflos und überfordert.
  Die Zeit allein in der Natur dient der Reise zum eigenen inneren Lehrer, der Reise zu sich selbst ohne irgendwelche Ablenkungen von außen, die uns immer wieder vom Weg nach innen abbringen. So wie jeder Körper sich heilen kann, kennt auch die eigene Seele tief im Innern ihren Weg, dem es zu lauschen gilt. So kann sich der Suchende neu orientieren und findet selbst seine Aus-Richtung.
  Den Rahmen bildet die Gemeinschaft - das Leitungsteam und die Eltern, deren Beteiligung am Ankommen und Abholen sehr wichtig ist, und natürlich die Schützlinge selbst, weiß doch jeder, daß da draußen auch andere in Versenkung und Stille verweilen...
  Nach ausführlicher Vorbereitung mit Gesprächen, Austausch über die eigene Identität als Erwachsener, als werdende Frau oder werdender Mann, findet jeder Jugendliche seinen Platz im Wald, richtet sein Lager ein und verweilt dort mit sich und der Natur. Diese ist sehr hilfreich als Mentorin, wird mir doch im Außen gespiegelt was im Inneren stattfindet. Nach der Solozeit werden die Schützlinge gebührend empfangen und das Erlebte gefeiert und gewürdigt.",
  price_cents: 15000,
  breakfast: 3,
  lunch: 3,
  dinner: 1
)
s.image_1.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.image_2.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.save!
s.seminar_contents.create(content: "Auseinandersetzung mit dem Thema Erwachsen werden")
s.seminar_contents.create(content: "Reflektion der eigenen Position im Leben")
s.seminar_contents.create(content: "Thema oder Frage finden")
s.seminar_contents.create(content: "innere Einkehr")
s.seminar_contents.create(content: "Integration des Erlebten")



s = SeminarInstance.new(
  name: "Bäume",
  seminar_type_id: 1,
  description: "Sie spenden uns im Sommer Schatten, wärmen uns im Winter mit ihrem Holz, bieten uns Schutz bei Regen, reichern unsere Luft mit Sauerstoff an, geben uns Nahrung, Heilung und Halt .Sie besitzen eine nahezu unvergleichliche Regenerationsfähigkeit und Ausdauer -verbleiben sie doch ihr gesamtes Leben an einer Stelle- und sie erleben unzählige menschliche Geschicke .Das ist es wert ,sich unseren Riesen ein Wochenende zu widmen ,sie kennenzulernen und zu erkennen. So liegt der Schwerpunkt des Seminars auf dem Erfahren der Vielseitigkeit unserer Bäume .Wir kosten, riechen, fühlen sie, verwenden und erkennen sie, spielen mit ihnen und knüpfen Bande. Wir lauschen Märchen, Mythen und Geschichten und nicht zuletzt erfahren wir die Unterschiede in der Beschaffenheit verschiedener Hölzer.",
  price_cents: 12000,
  breakfast: 3,
  lunch: 3,
  dinner: 1
)
s.image_1.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.image_2.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.save!
s.seminar_contents.create(content: "Bäume erkennen und benennen")
s.seminar_contents.create(content: "Bäume als Nahrung")
s.seminar_contents.create(content: "Heilkraft erfahren")
s.seminar_contents.create(content: "unterschiedliches Holz verarbeiten")
s.seminar_contents.create(content: "Baum als Spiegel und Mentor")


s = SeminarInstance.new(
  name: "Wandel im  Alter",
  seminar_type_id: 3,
  description: "“Wo seid ihr,ihr Alten und Weisen? Ihr, die ihr schon einen so weiten Lebensweg gegangen seid? Ich brauche Euch! Ich brauche Eure Führung!”
  So ähnlich äußerte sich eine 20-jährige auf einem Kongress der 13 Großmütter in Karlsruhe. Diese Forderung einer jungen Frau offenbart einen gesellschaftlichen Mißstand.
  Oft fühlen wir uns an der Schwelle zum Alter einsam, körperliche Schwächen beeinträchtigen die Lebensfreude und auch die Umstellung des Hormonhaushaltes macht uns zu schaffen, was Männer wie Frauen betrifft. Die uns umgebenden Menschen und unsere Gesellschaft begleiten diesen Wandel nur rudimentär und wir fühlen uns oft alleine, rat- und hilflos. Als wir noch in ursprünglichen Gemeinschaften lebten, wurde diese Zeit erfüllt durch die Weitergabe von Lebenserfahrung, die Führung und Begleitung der nachfolgenden Generationen und zahlreiche Aufgaben wie Kinderbetreuung, Leder gerben etc.
  Unsere heutigen Lebensumstände ermöglichen ein solches Aufgehoben- und Getragensein im Alter oft nicht mehr und ein Gefühl des Überflüssigseins und der Sinnlosigkeit stellt sich ein. Besonders Frauen, deren Kinder das Haus verlassen, empfinden eine Art der Nestleere.
  In diesen Tagen wollen wir uns mit phytohormonellen Pflanzen, Ernährung in den Wechseljahren und einem Medicinwalk beschäftigen, einem Schwellengang, der einen ganzen Tag dauern wird, um herauszufinden, was uns bisher genährt hat, was uns jetzt fehlt und was wir brauchen um in der weiteren Lebensphase ein erfülltes und reiches Leben zu führen. Nach dem Tag in der Natur werden wir in die Gemeinschaft aufgenommen, um am folgenden Morgen unsere Geschenke zu teilen.
  Dadurch daß wir die Geschichten anderer Menschen hören, denen es ähnlich ergeht und die sich ähnlich fühlen, verwandelt sich oft unser Schmerz in eine Kraft, die den Mut nährt, neue Schritte zu gehen.
  ",
  price_cents: 12000,
  breakfast: 3,
  lunch: 3,
  dinner: 1
)
s.image_1.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.image_2.attach(io: File.open("app/assets/images/owl.jpg"), filename: "Owl.jpg")
s.save!
s.seminar_contents.create(content: "Ernährung in den Wechseljahren und Kochen eines solchen Gerichtes")
s.seminar_contents.create(content: "phytohormonelle Pflanzen kennenlernen")
s.seminar_contents.create(content: "eintägiger Schwellengang mit anschließender Integration")
s.seminar_contents.create(content: "Austausch, Geschichten der Großmütter und das Erleben von Gemeinschaft in einer Zeit des Wandels ")

puts "Seminar Instances created"
