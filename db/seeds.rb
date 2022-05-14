# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'database_cleaner'

# DatabaseCleaner.clean_with(:truncation)

# Norgmar.create({nazwa: "Kronika Magnusa Mądrego, Parnam 1607 roku kalendarza kontynentalnego.", pid: 0,aid:1, nid: 2, opis:" … i  zszedł lud wysokich gór Norgmaru na wyżyny między rzekami Kava i Reva, siejąc mord i pożogę. Barbarzyńcy zwykli wołać, że oto wola pani Tary ich krwiożerczej bogini śmierci. "})
# Norgmar.create({nazwa: "Kronikas Magnusa Mądrego, Parnam 1607 roku kalendarza kontynentalnego.", pid: 1, aid:2, nid: 3, opis:"Ich pragnienie mordu zatrzymało się po trzech stuleciach na brzegach wielkiego morza wschodniego pokonani przez Borysa Wielkiego pierwszego księcia wielkiego księstwa Robarii, zaprzestali dalszego podboju, stąd ma teza, że jeno siłą można przemawiać do Norgmarytów …"})
# Norgmar.create({nazwa: "Pamiętnik anonimowego Druida, Bar Roku 64 kalendarza Norgmaru.", pid: 2, aid:3, nid: 4, opis:"… Zwracał się w te słowa to podbitych ludów ,, Jam jest Warnan Król Gór spełniający wole pani życia Tary. Przegraliście moi bracia i siostry na prawie podboju biorę was pod moją opiekę i przedstawiam wam wolę Tary. Koniec mordu ma ludzie ziemi i lasu od dni dzisiejszego macie nakaz je szanować, aż po dzień gdy ziemia pęknie a bogowie rozpoczną ostatni bój o los świata. Stosujcie ten nakaz a zachowacie swe prawa obyczaje i ziemie której tak zaciekle broniliście. Ja i moi następcy przysięgamy i ogłaszamy biorąc na światków wszystkie świętości, że każdy atak na was będzie atakiem na Norgamr i oto odpowiemy na niego całą naszą siłą.”  Tak oto Waron pierwszy król Norgamru zjednywał sobie ludy które przeciwstawiały się woli Tary…"})


# Klan.create({
#     nazwa:"Klan Niedzwiedzia",
#     jarl:"Thorgmarn Imadło-ręki ( średni syn Jaromiry Tarczy Norgmaru ) człowiek o niedźwiedziej posturze mający jawne palny by wżenić się w jedną z południowych dynastii. Pierwszy Jarl tych ziem Miran ponury rozpoczął powolny podbój północy kontynuowany przez jego następców. Obecny jarl skupia się jednak bardziej nad odbudową całego królestwa Norgmaru oraz nad zapanowaniem nad szlachtą próbującą wykorzystać chaos po niedawnej śmierci Jaromiry i pogłębiających się podziałów między Klanami Norgamru. ",
#     nastepca:"Morn czarny prawdopodobnie najznakomitszy szermierz Norgamru wsławiony w wojnach z Parnamem, mówi się, że uśmiercił lub zranił 64 zbrojnych w jednej bitwie. Jakorn Piękno-oki (najmłodszy syn Jaromiry ) słynie z pięknej urody, bękarciego pochodzenia oraz z poślubienia trzy razy starszej od siebie kobiety ponoć w celu zagarnięcia jej majątku.",
#     stolica:"Lich to największe miasto Norgamru położone w centralnej części klanu, nad ogromnym jeziorem Horra oraz u zbocza Białej Góry słynie z największego cmentarza znanego świata oraz ogromnych murów obronnych których ponoć nie sforsowała żadna armia. Jedyna droga od południa do miasta prowadzi przez kilometrowy kamienny most.",
#     polozenie:" Rozciąga się od gór Norgmaru na zachodzie,morza północnego oraz gór skalnych, rzeki Kava na południu oraz rzeką Reya na zachodzie. Graniczy z Klanem dębu na zachodzie, bezkresną północą, klanami Żubra i Jelenia na wschodzie oraz z Klanem dzika od południa. ",
#     opis:"to największy pod względem terytorium i lisczmy ludności klan Norgmaru jego gospodarka opiera się na rolnictwie dzięki ogromnej ilości rzek a co za tym idzie żyznych mad. Posiada też największą kopalnie soli znaną ludzkości.  To pierwsze z ziem podbitych przed ośmioma tysiącami lat przez lud gór. Klan Niedźwiedzia posiada również największa z klanowych armii, z której często korzysta gdyż hordy orków, olbrzymy, ogry oraz barbarzyńskie ludy z bezkresnej północy często łupią rubieże Klanu. Wielu bohaterów narodowych Norgamru pochodziło z tych ziem, nazywany jest często sercem Norgamru.  Dlatego ludzi z tej części świata cechuje siła fizyczna, umiejętności walki, niezłomna wola i szacunek innych klanów. ",
#     statystyki:[{
#         sila:10,
#         sila_woli:5,
#         oglada:5
#     }]
# })

Postac.create({imie:"szczurovsky", statystyki:[{sila:1, sila_woli:1, oglada:1}], klan:[{nazwa:"", jarl:"", nastepca:"", stolica:"", polozenie:"", opis:"", premie:{}}], profesja:{nazwa:"", wyposazenie_start:"",umiejetnosci:[{nazwa:"", opis:"", premie_um:""}],premie:[{}]},umiejetnosci:[{}], przedmioty:[{}], p_fab:{step:0}})