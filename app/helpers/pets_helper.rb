module PetsHelper
  def primary_breed
    ["Mixed Breed", "Affenpinscher", "Afghan Hound", "Aidi", "Airedale Terrier", "Akbash", "Akita", "Akita Inu", "Alano Espaol", "Alaskan Klee Kai", "Alaskan Malamute", "Alpine Dachsbracke", "Alpine Spaniel", "American Akita", "American Bulldog", "American Cocker Spaniel", "American English Coonhound", "American Eskimo Dog", "American Foxhound", "American Hairless Terrier", "American Leopard Hound", "American Mastiff", "American Pit Bull Terrier", "American Staffordshire Terrier", "American Water Spaniel", "Anatolian Shepherd Dog", "Anglo-Franais de Petite Vnerie", "Appenzeller Sennenhund", "Appenzeller Sennenhunde", "Ariege Pointer", "Ariegeois", "Armant", "Armenian Gampr dog", "Artois Hound", "Australian Cattle Dog", "Australian Kelpie", "Australian Shepherd", "Australian Silky Terrier", "Australian Stumpy Tail Cattle Dog", "Australian Terrier", "Austrian Black and Tan Hound", "Austrian Pinscher", "Azawakh", "Bakharwal Dog", "Barbet", "Basenji", "Basque Shepherd Dog", "Basset Artsien Normand", "Basset Bleu de Gascogne", "Basset Fauve de Bretagne", "Basset Griffon Venden, Grand", "Basset Griffon Venden, Petit", "Basset Hound", "Bavarian Mountain Hound", "Beagle", "Beagle-Harrier", "Bearded Collie", "Beauceron", "Bedlington Terrier", "Belgian Laekenois", "Belgian Malinois", "Belgian Sheepdog", "Belgian Shepherd (Tervuren)", "Belgian Shepherd Dog (Groenendael)", "Belgian Shepherd Dog (Laekenois)", "Belgian Shepherd Dog (Malinois)", "Belgian Tervuren", "Bergamasco", "Bergamasco Shepherd", "Berger Blanc Suisse", "Berger Picard", "Berner Laufhund", "Bernese Mountain Dog", "Bichon Frise", "Bichon Fris", "Billy", "Black and Tan Coonhound", "Black and Tan Virginia Foxhound", "Black Norwegian Elkhound", "Black Russian Terrier", "Blackmouth Cur", "Bleu de Gascogne, Grand", "Bleu de Gascogne, Petit", "Bloodhound", "Blue Lacy", "Blue Paul Terrier", "Bluetick Coonhound", "Boerboel", "Bohemian Shepherd", "Bolognese", "Border Collie", "Border Terrier", "Borzoi", "Bosnian Coarse-haired Hound", "Boston Terrier", "Bouvier des Ardennes", "Bouvier des Flandres", "Boxer", "Boykin Spaniel", "Bracco Italiano", "Braque dAuvergne", "Braque du Bourbonnais", "Braque du Puy", "Braque Francais", "Braque Saint-Germain", "Brazilian Terrier", "Briard", "Briquet Griffon Venden", "Brittany", "Broholmer", "Bruno Jura Hound", "Brussels Griffon", "Bucovina Shepherd Dog", "Bull and Terrier", "Bull Terrier", "Bull Terrier (Miniature)", "Bulldog", "Bullenbeisser", "Bullmastiff", "Bully Kutta", "Burgos Pointer", "Cairn Terrier", "Canaan Dog", "Canadian Eskimo Dog", "Cane Corso", "Co da Serra de Aires", "Co de Castro Laboreiro", "Co Fila de So Miguel", "Cardigan Welsh Corgi", "Carolina Dog", "Carpathian Shepherd Dog", "Catahoula Cur", "Catahoula Leopard Dog", "Catalan Sheepdog", "Caucasian Ovcharka", "Caucasian Shepherd Dog", "Cavalier King Charles Spaniel", "Central Asian Shepherd Dog", "Cesky Fousek", "Cesky Terrier", "Chesapeake Bay Retriever", "Chien Franais Blanc et Noir", "Chien Franais Blanc et Orange", "Chien Franais Tricolore", "Chien-gris", "Chihuahua", "Chilean Fox Terrier", "Chinese Chongqing Dog", "Chinese Crested", "Chinese Crested Dog", "Chinese Imperial Dog", "Chinese Shar-Pei", "Chinook", "Chippiparai", "Chow Chow", "Cierny Sery", "Cimarrn Uruguayo", "Cirneco dellEtna", "Clumber Spaniel", "Cocker Spaniel", "Collie", "Collie, Rough", "Collie, Smooth", "Combai", "Cordoba Fighting Dog", "Coton de Tulear", "Cretan Hound", "Croatian Sheepdog", "Cumberland Sheepdog", "Curly Coated Retriever", "Curly-Coated Retriever", "Cursinu", "Czechoslovak Wolfdog", "Czechoslovakian Vlcak", "Dachshund", "Dalmatian", "Dandie Dinmont Terrier", "Danish Swedish Farmdog", "Danish-Swedish Farmdog", "Deutsche Bracke", "Deutscher Wachtelhund", "Doberman Pinscher", "Dogo Argentino", "Dogo Cubano", "Dogue de Bordeaux", "Drentsche Patrijshond", "Drentse Patrijshond", "Drever", "Dunker", "Dutch Shepherd", "Dutch Shepherd Dog", "Dutch Smoushond", "East Siberian Laika", "East-European Shepherd", "Elo", "English Cocker Spaniel", "English Coonhound", "English Foxhound", "English Mastiff", "English Setter", "English Shepherd", "English Springer Spaniel", "English Toy Spaniel", "English Toy Terrier (Black & Tan)", "English Water Spaniel", "English White Terrier", "Entlebucher Mountain Dog", "pagneul Bleu de Picardie", "Estonian Hound", "Estrela Mountain Dog", "Eurasier", "Field Spaniel", "Fila Brasileiro", "Finnish Hound", "Finnish Lapphund", "Finnish Spitz", "Flat-Coated Retriever", "Formosan Mountain Dog", "Fox Terrier (Smooth)", "Fox Terrier, Wire", "French Brittany", "French Bulldog", "French Spaniel", "Galgo Espaol", "Gascon Saintongeois", "Georgian shepherd", "German Longhaired Pointer", "German Pinscher", "German Rough-haired Pointer", "German Shepherd Dog", "German Shorthaired Pointer", "German Spaniel", "German Spitz", "German Wirehaired Pointer", "Giant Schnauzer", "Glen of Imaal Terrier", "Golden Retriever", "Gordon Setter", "Gran Mastn de Bornquen", "Grand Anglo-Franais Blanc et Noir", "Grand Anglo-Franais Blanc et Orange", "Grand Anglo-Franais Tricolore", "Grand Basset Griffon Vendeen", "Grand Griffon Venden", "Great Dane", "Great Pyrenees", "Greater Swiss Mountain Dog", "Greek Harehound", "Greenland Dog", "Greyhound", "Griffon Bleu de Gascogne", "Griffon Bruxellois", "Griffon Fauve de Bretagne", "Griffon Nivernais", "Hamiltonstovare", "Hamiltonstvare", "Hanover Hound", "Hare Indian Dog", "Harrier", "Havanese", "Hawaiian Poi Dog", "Himalayan Sheepdog", "Hokkaido", "Hortaya Borzaya", "Hovawart", "Hungarian Hound", "Huntaway", "Hygenhund", "Ibizan Hound", "Icelandic Sheepdog", "Indian Spitz", "Irish Red and White Setter", "Irish Setter", "Irish Terrier", "Irish Water Spaniel", "Irish Wolfhound", "Istrian Coarse-haired Hound", "Istrian Shorthaired Hound", "Italian Greyhound", "Jack Russell Terrier", "Jagdterrier", "Jmthund", "Japanese Chin", "Japanese Spitz", "Japanese Terrier", "Jindo", "Kai Ken", "Kaikadi", "Kangal Dog", "Kanni", "Karakachan Dog", "Karelian Bear Dog", "Karst Shepherd", "Keeshond", "Kerry Beagle", "Kerry Blue Terrier", "King Charles Spaniel", "King Shepherd", "Kintamani", "Kishu", "Kishu Ken", "Komondor", "Kooikerhondje", "Koolie", "Korean Jindo Dog", "Kromfohrlnder", "Kunming Wolfdog", "Kur", "Kuvasz", "Kyi-Leo", "Labrador Husky", "Labrador Retriever", "Lagotto Romagnolo", "Lakeland Terrier", "Lancashire Heeler", "Landseer", "Lapponian Herder", "Leonberger", "Lhasa Apso", "Lithuanian Hound", "Longhaired Whippet", "Lowchen", "Lwchen", "Magyar Agr", "Maltese", "Manchester Terrier", "Maremma Sheepdog", "Mastiff", "McNab", "Mexican Hairless Dog", "Miniature American Shepherd", "Miniature Australian Shepherd", "Miniature Bull Terrier", "Miniature Fox Terrier", "Miniature Pinscher", "Miniature Schnauzer", "Mioritic", "Molossus", "Montenegrin Mountain Hound", "Moscow Watchdog", "Moscow Water Dog", "Mountain Cur", "Mucuchies", "Mudhol Hound", "Mudi", "Mnsterlnder, Large", "Mnsterlnder, Small", "Neapolitan Mastiff", "New Zealand Heading Dog", "Newfoundland", "Norfolk Spaniel", "Norfolk Terrier", "Norrbottenspets", "North Country Beagle", "Northern Inuit Dog", "Norwegian Buhund", "Norwegian Elkhound", "Norwegian Lundehund", "Norwich Terrier", "Nova Scotia Duck Tolling Retriever", "Nova Scotia Duck-Tolling Retriever", "Old Croatian Sighthound", "Old Danish Pointer", "Old English Sheepdog", "Old English Terrier", "Old German Shepherd Dog", "Old Time Farm Shepherd", "Olde English Bulldogge", "Otterhound", "Pachon Navarro", "Paisley Terrier", "Papillon", "Parson Russell Terrier", "Patterdale Terrier", "Pekingese", "Pembroke Welsh Corgi", "Perro de Presa Canario", "Perro de Presa Mallorquin", "Peruvian Hairless Dog", "Peruvian Inca Orchid", "Petit Basset Griffon Vendeen", "Phalne", "Pharaoh Hound", "Phu Quoc ridgeback dog", "Picardy Spaniel", "Plott", "Plott Hound", "Podenco Canario", "Pointer", "Polish Greyhound", "Polish Hound", "Polish Hunting Dog", "Polish Lowland Sheepdog", "Polish Tatra Sheepdog", "Pomeranian", "Pont-Audemer Spaniel", "Poodle", "Porcelaine", "Portuguese Podengo", "Portuguese Podengo Pequeno", "Portuguese Pointer", "Portuguese Sheepdog", "Portuguese Water Dog", "Posavac Hound", "Prask Krysak", "Pudelpointer", "Pug", "Puli", "Pumi", "Pungsan Dog", "Pyrenean Mastiff", "Pyrenean Shepherd", "Rafeiro do Alentejo", "Rajapalayam", "Rampur Greyhound", "Rastreador Brasileiro", "Rat Terrier", "Ratonero Bodeguero Andaluz", "Ratonero Valenciano", "Redbone Coonhound", "Rhodesian Ridgeback", "Rottweiler", "Russell Terrier", "Russian Spaniel", "Russian Toy", "Russian tracker", "Russo-European Laika", "Saarlooswolfhond", "Sabueso Espaol", "Saint-Usuge Spaniel", "Sakhalin Husky", "Saluki", "Samoyed", "Sapsali", "arplaninac", "Schapendoes", "Schillerstvare", "Schipperke", "Schweizer Laufhund", "Schweizerischer Niederlaufhund", "Scotch Collie", "Scottish Deerhound", "Scottish Terrier", "Sealyham Terrier", "Segugio Italiano", "Seppala Siberian Sleddog", "Serbian Hound", "Serbian Tricolour Hound", "Shar Pei", "Shetland Sheepdog", "Shiba Inu", "Shih Tzu", "Shikoku", "Shiloh Shepherd Dog", "Siberian Husky", "Silken Windhound", "Silky Terrier", "Sinhala Hound", "Skye Terrier", "Sloughi", "Slovak Cuvac", "Slovakian Rough-haired Pointer", "Slovensky Cuvac", "Slovensk Kopov", "Smlandsstvare", "Small Greek Domestic Dog", "Small Munsterlander Pointer", "Smooth Fox Terrier", "Soft Coated Wheaten Terrier", "Soft-Coated Wheaten Terrier", "South Russian Ovcharka", "Southern Hound", "Spanish Mastiff", "Spanish Water Dog", "Spinone Italiano", "Sporting Lucas Terrier", "St. Bernard", "St. Johns water dog", "Stabyhoun", "Staffordshire Bull Terrier", "Standard Schnauzer", "Stephens Cur", "Styrian Coarse-haired Hound", "Sussex Spaniel", "Swedish Lapphund", "Swedish Vallhund", "Tahltan Bear Dog", "Taigan", "Talbot", "Tamaskan Dog", "Teddy Roosevelt Terrier", "Telomian", "Tennessee Treeing Brindle", "Tenterfield Terrier", "Thai Bangkaew Dog", "Thai Ridgeback", "Tibetan Mastiff", "Tibetan Spaniel", "Tibetan Terrier", "Tornjak", "Tosa", "Toy Bulldog", "Toy Fox Terrier", "Toy Manchester Terrier", "Toy Trawler Spaniel", "Transylvanian Hound", "Treeing Cur", "Treeing Tennessee Brindle", "Treeing Walker Coonhound", "Trigg Hound", "Tweed Water Spaniel", "Tyrolean Hound", "Vizsla", "Volpino Italiano", "Weimaraner", "Welsh Corgi, Cardigan", "Welsh Corgi, Pembroke", "Welsh Sheepdog", "Welsh Springer Spaniel", "Welsh Terrier", "West Highland White Terrier", "West Siberian Laika", "Westphalian Dachsbracke", "Wetterhoun", "Whippet", "White Shepherd", "Wire Fox Terrier", "Wirehaired Pointing Griffon", "Wirehaired Vizsla", "Xoloitzcuintli", "Yorkshire Terrier"]
  end

  def secondary_breed
    ["Mixed Breed", "Affenpinscher", "Afghan Hound", "Aidi", "Airedale Terrier", "Akbash", "Akita", "Akita Inu", "Alano Espaol", "Alaskan Klee Kai", "Alaskan Malamute", "Alpine Dachsbracke", "Alpine Spaniel", "American Akita", "American Bulldog", "American Cocker Spaniel", "American English Coonhound", "American Eskimo Dog", "American Foxhound", "American Hairless Terrier", "American Leopard Hound", "American Mastiff", "American Pit Bull Terrier", "American Staffordshire Terrier", "American Water Spaniel", "Anatolian Shepherd Dog", "Anglo-Franais de Petite Vnerie", "Appenzeller Sennenhund", "Appenzeller Sennenhunde", "Ariege Pointer", "Ariegeois", "Armant", "Armenian Gampr dog", "Artois Hound", "Australian Cattle Dog", "Australian Kelpie", "Australian Shepherd", "Australian Silky Terrier", "Australian Stumpy Tail Cattle Dog", "Australian Terrier", "Austrian Black and Tan Hound", "Austrian Pinscher", "Azawakh", "Bakharwal Dog", "Barbet", "Basenji", "Basque Shepherd Dog", "Basset Artsien Normand", "Basset Bleu de Gascogne", "Basset Fauve de Bretagne", "Basset Griffon Venden, Grand", "Basset Griffon Venden, Petit", "Basset Hound", "Bavarian Mountain Hound", "Beagle", "Beagle-Harrier", "Bearded Collie", "Beauceron", "Bedlington Terrier", "Belgian Laekenois", "Belgian Malinois", "Belgian Sheepdog", "Belgian Shepherd (Tervuren)", "Belgian Shepherd Dog (Groenendael)", "Belgian Shepherd Dog (Laekenois)", "Belgian Shepherd Dog (Malinois)", "Belgian Tervuren", "Bergamasco", "Bergamasco Shepherd", "Berger Blanc Suisse", "Berger Picard", "Berner Laufhund", "Bernese Mountain Dog", "Bichon Frise", "Bichon Fris", "Billy", "Black and Tan Coonhound", "Black and Tan Virginia Foxhound", "Black Norwegian Elkhound", "Black Russian Terrier", "Blackmouth Cur", "Bleu de Gascogne, Grand", "Bleu de Gascogne, Petit", "Bloodhound", "Blue Lacy", "Blue Paul Terrier", "Bluetick Coonhound", "Boerboel", "Bohemian Shepherd", "Bolognese", "Border Collie", "Border Terrier", "Borzoi", "Bosnian Coarse-haired Hound", "Boston Terrier", "Bouvier des Ardennes", "Bouvier des Flandres", "Boxer", "Boykin Spaniel", "Bracco Italiano", "Braque dAuvergne", "Braque du Bourbonnais", "Braque du Puy", "Braque Francais", "Braque Saint-Germain", "Brazilian Terrier", "Briard", "Briquet Griffon Venden", "Brittany", "Broholmer", "Bruno Jura Hound", "Brussels Griffon", "Bucovina Shepherd Dog", "Bull and Terrier", "Bull Terrier", "Bull Terrier (Miniature)", "Bulldog", "Bullenbeisser", "Bullmastiff", "Bully Kutta", "Burgos Pointer", "Cairn Terrier", "Canaan Dog", "Canadian Eskimo Dog", "Cane Corso", "Co da Serra de Aires", "Co de Castro Laboreiro", "Co Fila de So Miguel", "Cardigan Welsh Corgi", "Carolina Dog", "Carpathian Shepherd Dog", "Catahoula Cur", "Catahoula Leopard Dog", "Catalan Sheepdog", "Caucasian Ovcharka", "Caucasian Shepherd Dog", "Cavalier King Charles Spaniel", "Central Asian Shepherd Dog", "Cesky Fousek", "Cesky Terrier", "Chesapeake Bay Retriever", "Chien Franais Blanc et Noir", "Chien Franais Blanc et Orange", "Chien Franais Tricolore", "Chien-gris", "Chihuahua", "Chilean Fox Terrier", "Chinese Chongqing Dog", "Chinese Crested", "Chinese Crested Dog", "Chinese Imperial Dog", "Chinese Shar-Pei", "Chinook", "Chippiparai", "Chow Chow", "Cierny Sery", "Cimarrn Uruguayo", "Cirneco dellEtna", "Clumber Spaniel", "Cocker Spaniel", "Collie", "Collie, Rough", "Collie, Smooth", "Combai", "Cordoba Fighting Dog", "Coton de Tulear", "Cretan Hound", "Croatian Sheepdog", "Cumberland Sheepdog", "Curly Coated Retriever", "Curly-Coated Retriever", "Cursinu", "Czechoslovak Wolfdog", "Czechoslovakian Vlcak", "Dachshund", "Dalmatian", "Dandie Dinmont Terrier", "Danish Swedish Farmdog", "Danish-Swedish Farmdog", "Deutsche Bracke", "Deutscher Wachtelhund", "Doberman Pinscher", "Dogo Argentino", "Dogo Cubano", "Dogue de Bordeaux", "Drentsche Patrijshond", "Drentse Patrijshond", "Drever", "Dunker", "Dutch Shepherd", "Dutch Shepherd Dog", "Dutch Smoushond", "East Siberian Laika", "East-European Shepherd", "Elo", "English Cocker Spaniel", "English Coonhound", "English Foxhound", "English Mastiff", "English Setter", "English Shepherd", "English Springer Spaniel", "English Toy Spaniel", "English Toy Terrier (Black & Tan)", "English Water Spaniel", "English White Terrier", "Entlebucher Mountain Dog", "pagneul Bleu de Picardie", "Estonian Hound", "Estrela Mountain Dog", "Eurasier", "Field Spaniel", "Fila Brasileiro", "Finnish Hound", "Finnish Lapphund", "Finnish Spitz", "Flat-Coated Retriever", "Formosan Mountain Dog", "Fox Terrier (Smooth)", "Fox Terrier, Wire", "French Brittany", "French Bulldog", "French Spaniel", "Galgo Espaol", "Gascon Saintongeois", "Georgian shepherd", "German Longhaired Pointer", "German Pinscher", "German Rough-haired Pointer", "German Shepherd Dog", "German Shorthaired Pointer", "German Spaniel", "German Spitz", "German Wirehaired Pointer", "Giant Schnauzer", "Glen of Imaal Terrier", "Golden Retriever", "Gordon Setter", "Gran Mastn de Bornquen", "Grand Anglo-Franais Blanc et Noir", "Grand Anglo-Franais Blanc et Orange", "Grand Anglo-Franais Tricolore", "Grand Basset Griffon Vendeen", "Grand Griffon Venden", "Great Dane", "Great Pyrenees", "Greater Swiss Mountain Dog", "Greek Harehound", "Greenland Dog", "Greyhound", "Griffon Bleu de Gascogne", "Griffon Bruxellois", "Griffon Fauve de Bretagne", "Griffon Nivernais", "Hamiltonstovare", "Hamiltonstvare", "Hanover Hound", "Hare Indian Dog", "Harrier", "Havanese", "Hawaiian Poi Dog", "Himalayan Sheepdog", "Hokkaido", "Hortaya Borzaya", "Hovawart", "Hungarian Hound", "Huntaway", "Hygenhund", "Ibizan Hound", "Icelandic Sheepdog", "Indian Spitz", "Irish Red and White Setter", "Irish Setter", "Irish Terrier", "Irish Water Spaniel", "Irish Wolfhound", "Istrian Coarse-haired Hound", "Istrian Shorthaired Hound", "Italian Greyhound", "Jack Russell Terrier", "Jagdterrier", "Jmthund", "Japanese Chin", "Japanese Spitz", "Japanese Terrier", "Jindo", "Kai Ken", "Kaikadi", "Kangal Dog", "Kanni", "Karakachan Dog", "Karelian Bear Dog", "Karst Shepherd", "Keeshond", "Kerry Beagle", "Kerry Blue Terrier", "King Charles Spaniel", "King Shepherd", "Kintamani", "Kishu", "Kishu Ken", "Komondor", "Kooikerhondje", "Koolie", "Korean Jindo Dog", "Kromfohrlnder", "Kunming Wolfdog", "Kur", "Kuvasz", "Kyi-Leo", "Labrador Husky", "Labrador Retriever", "Lagotto Romagnolo", "Lakeland Terrier", "Lancashire Heeler", "Landseer", "Lapponian Herder", "Leonberger", "Lhasa Apso", "Lithuanian Hound", "Longhaired Whippet", "Lowchen", "Lwchen", "Magyar Agr", "Maltese", "Manchester Terrier", "Maremma Sheepdog", "Mastiff", "McNab", "Mexican Hairless Dog", "Miniature American Shepherd", "Miniature Australian Shepherd", "Miniature Bull Terrier", "Miniature Fox Terrier", "Miniature Pinscher", "Miniature Schnauzer", "Mioritic", "Molossus", "Montenegrin Mountain Hound", "Moscow Watchdog", "Moscow Water Dog", "Mountain Cur", "Mucuchies", "Mudhol Hound", "Mudi", "Mnsterlnder, Large", "Mnsterlnder, Small", "Neapolitan Mastiff", "New Zealand Heading Dog", "Newfoundland", "Norfolk Spaniel", "Norfolk Terrier", "Norrbottenspets", "North Country Beagle", "Northern Inuit Dog", "Norwegian Buhund", "Norwegian Elkhound", "Norwegian Lundehund", "Norwich Terrier", "Nova Scotia Duck Tolling Retriever", "Nova Scotia Duck-Tolling Retriever", "Old Croatian Sighthound", "Old Danish Pointer", "Old English Sheepdog", "Old English Terrier", "Old German Shepherd Dog", "Old Time Farm Shepherd", "Olde English Bulldogge", "Otterhound", "Pachon Navarro", "Paisley Terrier", "Papillon", "Parson Russell Terrier", "Patterdale Terrier", "Pekingese", "Pembroke Welsh Corgi", "Perro de Presa Canario", "Perro de Presa Mallorquin", "Peruvian Hairless Dog", "Peruvian Inca Orchid", "Petit Basset Griffon Vendeen", "Phalne", "Pharaoh Hound", "Phu Quoc ridgeback dog", "Picardy Spaniel", "Plott", "Plott Hound", "Podenco Canario", "Pointer", "Polish Greyhound", "Polish Hound", "Polish Hunting Dog", "Polish Lowland Sheepdog", "Polish Tatra Sheepdog", "Pomeranian", "Pont-Audemer Spaniel", "Poodle", "Porcelaine", "Portuguese Podengo", "Portuguese Podengo Pequeno", "Portuguese Pointer", "Portuguese Sheepdog", "Portuguese Water Dog", "Posavac Hound", "Prask Krysak", "Pudelpointer", "Pug", "Puli", "Pumi", "Pungsan Dog", "Pyrenean Mastiff", "Pyrenean Shepherd", "Rafeiro do Alentejo", "Rajapalayam", "Rampur Greyhound", "Rastreador Brasileiro", "Rat Terrier", "Ratonero Bodeguero Andaluz", "Ratonero Valenciano", "Redbone Coonhound", "Rhodesian Ridgeback", "Rottweiler", "Russell Terrier", "Russian Spaniel", "Russian Toy", "Russian tracker", "Russo-European Laika", "Saarlooswolfhond", "Sabueso Espaol", "Saint-Usuge Spaniel", "Sakhalin Husky", "Saluki", "Samoyed", "Sapsali", "arplaninac", "Schapendoes", "Schillerstvare", "Schipperke", "Schweizer Laufhund", "Schweizerischer Niederlaufhund", "Scotch Collie", "Scottish Deerhound", "Scottish Terrier", "Sealyham Terrier", "Segugio Italiano", "Seppala Siberian Sleddog", "Serbian Hound", "Serbian Tricolour Hound", "Shar Pei", "Shetland Sheepdog", "Shiba Inu", "Shih Tzu", "Shikoku", "Shiloh Shepherd Dog", "Siberian Husky", "Silken Windhound", "Silky Terrier", "Sinhala Hound", "Skye Terrier", "Sloughi", "Slovak Cuvac", "Slovakian Rough-haired Pointer", "Slovensky Cuvac", "Slovensk Kopov", "Smlandsstvare", "Small Greek Domestic Dog", "Small Munsterlander Pointer", "Smooth Fox Terrier", "Soft Coated Wheaten Terrier", "Soft-Coated Wheaten Terrier", "South Russian Ovcharka", "Southern Hound", "Spanish Mastiff", "Spanish Water Dog", "Spinone Italiano", "Sporting Lucas Terrier", "St. Bernard", "St. Johns water dog", "Stabyhoun", "Staffordshire Bull Terrier", "Standard Schnauzer", "Stephens Cur", "Styrian Coarse-haired Hound", "Sussex Spaniel", "Swedish Lapphund", "Swedish Vallhund", "Tahltan Bear Dog", "Taigan", "Talbot", "Tamaskan Dog", "Teddy Roosevelt Terrier", "Telomian", "Tennessee Treeing Brindle", "Tenterfield Terrier", "Thai Bangkaew Dog", "Thai Ridgeback", "Tibetan Mastiff", "Tibetan Spaniel", "Tibetan Terrier", "Tornjak", "Tosa", "Toy Bulldog", "Toy Fox Terrier", "Toy Manchester Terrier", "Toy Trawler Spaniel", "Transylvanian Hound", "Treeing Cur", "Treeing Tennessee Brindle", "Treeing Walker Coonhound", "Trigg Hound", "Tweed Water Spaniel", "Tyrolean Hound", "Vizsla", "Volpino Italiano", "Weimaraner", "Welsh Corgi, Cardigan", "Welsh Corgi, Pembroke", "Welsh Sheepdog", "Welsh Springer Spaniel", "Welsh Terrier", "West Highland White Terrier", "West Siberian Laika", "Westphalian Dachsbracke", "Wetterhoun", "Whippet", "White Shepherd", "Wire Fox Terrier", "Wirehaired Pointing Griffon", "Wirehaired Vizsla", "Xoloitzcuintli", "Yorkshire Terrier"]
  end

  def cat_breeds
    ["Mixed Breed", "Domestic long hair", "Domestic short hair", "Domestic medium hair", "Abyssinian", "Aegean cat", "Australian Mist", "American is a Curl", "American Bobtail", "American Polydactyl", "American Shorthair", "American Wirehair", "Arabian Mau", "Asian (cat)", "Asian Semi-longhair", "Balinese", "Bambino", "Bengal", "Birman", "Bombay", "Brazilian Shorthair", "British Shorthair", "British Longhair", "Burmese", "Burmilla", "California Spangled Cat", "Chantilly/Tiffany", "Chartreux", "Chausie", "Cheetoh", "Colorpoint Shorthair", "Cornish Rex", "Cymric", "Cyprus Aphrodite", "Devon Rex", "Donskoy or Don Sphynx", "Dragon Li", "Dwelf", "Egyptian Mau", "European Shorthair", "Exotic Shorthair", "German Rex", "Havana Brown", "Highlander", "Himalayan/Colorpoint Persian", "Japanese Bobtail", "Javanese", "Korat", "Kurilian Bobtail", "LaPerm", "Maine Coon", "Manx", "Mekong bobtail", "Minskin", "Munchkin", "Nebelung", "Napoleon", "Norwegian Forest Cat", "Ocicat", "Ojos Azules", "Oregon Rex", "Oriental Bicolor", "Oriental Shorthair", "Oriental Longhair", "Persian", "Peterbald", "Pixie-bob", "Ragamuffin", "Ragdoll", "Russian Blue", "Russian Black, White or Tabby", "Savannah", "Scottish Fold", "Selkirk Rex", "Serengeti cat", "Siamese", "Siberian", "Singapura", "Snowshoe", "Sokoke", "Somali", "Sphynx", "Thai", "Tonkinese", "Toyger", "Turkish Angora", "Turkish Van", "Ukrainian Levkoy", "Ussuri", "York Chocolate Cat"]
  end

  def doc_types
    ["pdf", "doc", "docx", "ppt"]
  end

  def coat_colors
    ["Black", "Dark Chocolate", "Brown", "Red", "Apricot", "Golden", "Dark Golden", "Off White (Cream)", "White", "Silver Grey", "Salt and Pepper", "Blue"]
  end

  def markings_list
    ["Liver and Tan", "Black and Tan", "Black and White", "Red-brown and White", "Tri-color", "Tuxedo", "Spotted", "Harlequin", "Red Speckled", "Liver-ticked", "Blue Speckled", "Light Brindle", "Dark Brindle", "Dark Brindle and White", "Dark Sable", "Light Sable"]
  end

  def rabies_proof(pet)
    url = pet.rabies_attachment.url(:original)
    if url.split('?')[0].last(3).downcase == "pdf"
      url = u(url)
      %Q{<iframe title="Rabies Proof" src="http://docs.google.com/viewer?url="#{url}&embedded=true" width="100%" height="300" style="border: none;" frameborder="0"></iframe>}
    else
      image_tag url
    end
  end  
end
