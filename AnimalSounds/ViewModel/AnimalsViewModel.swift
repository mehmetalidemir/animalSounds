//
//  AnimalsViewModel.swift
//  Animal Sounds
//
//  Created by Mehmet Ali Demir on 23.10.2022.
//

import Foundation

class AnimalsViewModel {

    private(set) var animals: [Animal] = [
        Animal(id: .dog,
            name: "Dog",
            info: "Dog is a very common four-legged animal that is often kept by people as a pet or to guard or hunt. There are many different breeds of dog.",
            group: .init(name: "Mammals", groupType: .group),
            sound: "WOOF"),

        Animal(id: .cat,
            name: "Cat",
            info: "Cat is a domestic species of small carnivorous mammal. It is the only domesticated species in the family Felidae and is commonly referred to as the domestic cat or house cat to distinguish it from the wild members of the family.",
            group: .init(name: "Mammals", groupType: .group),
            sound: "MEW"),

        Animal(id: .horse, name: "Horse", info: "Horses are strong, intelligent, and social animals that live together in herds in the wild. All members of the horse family have just one toe (a hoof) on each foot.", group: .init(name: "Mammals", groupType: .group), sound: "NEIGH"),

        Animal(id: .frog, name: "Frog", info: "Frog is a small creature with smooth skin, big eyes, and long back legs which it uses for jumping. Frogs usually live near water.", group: .init(name: "Amphibia", groupType: .group), sound: "CROAK"),

        Animal(id: .bear, name: "Bear", info: "Bears are carnivoran mammals of the family Ursidae. They are classified as caniforms, or doglike carnivorans.", group: .init(name: "Mammals", groupType: .group), sound: "GROWL"),

        Animal(id: .duck, name: "Duck", info: "Duck is the common name for numerous species of waterfowl in the family Anatidae.", group: .init(name: "Birds", groupType: .group), sound: "QUACK"),

        Animal(id: .fox, name: "Fox", info: "Fox is a carnivorous mammal of the dog family with a pointed muzzle and bushy tail, proverbial for its cunning.", group: .init(name: "Mammals", groupType: .group), sound: "YELP"),

        Animal(id: .bee, name: "Bee", info: "Bee is a stinging winged insect which collects nectar and pollen, produces wax and honey, and lives in large communities.", group: .init(name: "Insects", groupType: .group), sound: "BUZZ"),

        Animal(id: .cow, name: "Cow", info: "Cow is a fully grown female animal of a domesticated breed of ox, kept to produce milk or beef.", group: .init(name: "Mammals", groupType: .group), sound: "MOO"),

        Animal(id: .chicken, name: "Chicken", info: " Chicken is aa domestic fowl kept for its eggs or meat, especially a young one.", group: .init(name: "Birds", groupType: .group), sound: "CLUCK"),

        Animal(id: .sheep, name: "Sheep", info: "Sheep is a domesticated ruminant mammal with a thick woolly coat and (typically only in the male) curving horns. It is kept in flocks for its wool or meat, and is proverbial for its tendency to follow others in the flock.", group: .init(name: "Mammals", groupType: .group), sound: "BAA"),

        Animal(id: .monkey, name: "Monkey", info: "Monkey is a small to medium-sized primate that typically has a long tail, most kinds of which live in trees in tropical countries.", group: .init(name: "Mammals", groupType: .group), sound: "SCREECH"),

        Animal(id: .deer, name: "Deer", info: "Deer is a hoofed grazing or browsing animal, with branched bony antlers that are shed annually and typically borne only by the male.", group: .init(name: "Mammals", groupType: .group), sound: "BLEAT"),

        Animal(id: .pig, name: "Pig", info: "Pig is an omnivorous domesticated hoofed mammal with sparse bristly hair and a flat snout for rooting in the soil, kept for its meat.", group: .init(name: "Mammals", groupType: .group), sound: "OINK"),

        Animal(id: .rabbit, name: "Rabbit", info: "Rabbit a gregarious burrowing plant-eating mammal, with long ears, long hind legs, and a short tail.", group: .init(name: "Mammals", groupType: .group), sound: "SQUEAK"),

        Animal(id: .turkey, name: "Turkey", info: "Turkey is a large bird in the genus Meleagris, native to North America.", group: .init(name: "Birds", groupType: .group), sound: "GOOBLE"),

        Animal(id: .rooster, name: "Rooster", info: "Rooster or cock is a term for an adult male bird.", group: .init(name: "Birds", groupType: .group), sound: "COCK-A-DOODLE-DOO"),

        Animal(id: .donkey, name: "Donkey", info: "Donkey is a domesticated hoofed mammal of the horse family with long ears and a braying call, used as a beast of burden; an ass.", group: .init(name: "Mammals", groupType: .group), sound: "HEE-HAW"),

        Animal(id: .elephant, name: "Elephant", info: "Elephants are the largest land mammals on earth and have distinctly massive bodies, large ears, and long trunks.", group: .init(name: "Mammals", groupType: .group), sound: "TRUMPET"),

        Animal(id: .snake, name: "Snake", info: "Snakes are elongated, limbless, carnivorous reptiles of the suborder Serpentes.", group: .init(name: "Reptiles", groupType: .group), sound: "HISS"),

        Animal(id: .lion, name: "Lion", info: "Lions are large mammal of the Felidae (cat) family.", group: .init(name: "Mammals", groupType: .group), sound: "ROAR"),

        Animal(id: .wolf, name: "Wolf", info: "Wolves live and hunt in packs of around six to ten animals. They are known to roam large distances, perhaps 12 miles in a single day.", group: .init(name: "Mammals", groupType: .group), sound: "HOWL"),

        Animal(id: .ostrich, name: "Ostrich", info: "Ostrich is large flightless bird found only in open country in Africa.", group: .init(name: "Birds", groupType: .group), sound: "CHIRP"),

        Animal(id: .seal, name: "Seal", info: "Seals are a widely distributed and diverse clade of carnivorous, fin-footed, semiaquatic, mostly marine mammals.", group: .init(name: "Mammals", groupType: .group), sound: "BARK"),

        Animal(id: .camel, name: "Camel", info: "Camels are working animals especially suited to their desert habitat and are a vital means of transport for passengers and cargo.", group: .init(name: "Mammals", groupType: .group), sound: "GRUNTS"),

        Animal(id: .panda, name: "Panda", info: "Pandas are large, bear-like mammals native to central and southern China.", group: .init(name: "Mammals", groupType: .group), sound: "BLEAT"),

        Animal(id: .giraffe, name: "Giraffe", info: "Giraffes are tall, long-necked mammals native to Africa, with distinctive patterns on their fur and long, prehensile tongues.", group: .init(name: "Mammals", groupType: .group), sound: "HUM"),

        Animal(id: .zebra, name: "Zebra", info: "Zebras are African equids with distinctive black and white striped coats.", group: .init(name: "Mammals", groupType: .group), sound: "BRAY"),

        Animal(id: .tiger, name: "Tiger", info: "Tigers are large, striped cats native to Asia, known for their powerful builds and fierce nature.", group: .init(name: "Mammals", groupType: .group), sound: "ROAR"),

        Animal(id: .rhinoceros, name: "Rhinoceros", info: "Rhinoceroses are large, herbivorous mammals with thick skin and one or two horns on their snouts, native to Africa and Asia.", group: .init(name: "Mammals", groupType: .group), sound: "SNORT"),

//        Animal(id: .kangaroo, name: "Kangaroo", info: "Kangaroos are marsupial mammals native to Australia, known for their powerful hind legs and ability to hop great distances.", group: .init(name: "Mammals", groupType: .group), sound: "THUMP"),
//
//        Animal(id: .penguin, name: "Penguin", info: "Penguins are flightless birds native to the Southern Hemisphere, known for their distinctive tuxedo-like feathers and ability to swim.", group: .init(name: "Birds", groupType: .group), sound: "BRAAK"),
//
//        Animal(id: .dolphin, name: "Dolphin", info: "Dolphins are intelligent, social marine mammals with streamlined bodies and a unique ability to communicate with humans through vocalizations.", group: .init(name: "Mammals", groupType: .group), sound: "CLICK"),
//
//        Animal(id: .whale, name: "Whale", info: "Whales are large, intelligent marine mammals with streamlined bodies and a unique ability to communicate with humans through vocalizations.", group: .init(name: "Mammals", groupType: .group), sound: "DSA"),
//
//        Animal(id: .octopus, name: "Octopus", info: "Octopuses are intelligent, eight-armed mollusks found in the ocean, known for their ability to change color and shape.", group: .init(name: "Mollusks", groupType: .group), sound: "N/A"),
//
//        Animal(id: .shark, name: "Shark", info: "Sharks are large, predatory fish found in the ocean, known for their sharp teeth and keen senses.", group: .init(name: "Fish", groupType: .group), sound: "N/A"),
//
//        Animal(id: .turtle, name: "Turtle", info: "Turtles are reptiles with a hard, protective shell and a tendency to move slowly.", group: .init(name: "Reptiles", groupType: .group), sound: "N/A"),
//
//
//        Animal(id: .iguana, name: "Iguana", info: "Iguanas are large lizards native to Central and South America, known for their spiky scales and long tails.", group: .init(name: "Reptiles", groupType: .group), sound: "N/A"),
//
//        Animal(id: .chameleon, name: "Chameleon", info: "Chameleons are small, agile lizards native to Africa and Madagascar, known for their ability to change color and their long, protruding eyes.", group: .init(name: "Reptiles", groupType: .group), sound: "N/A"),
//
//        Animal(id: .crocodile, name: "Crocodile", info: "Crocodiles are large, semi-aquatic reptiles with long, powerful jaws and sharp teeth, native to tropical regions around the world.", group: .init(name: "Reptiles", groupType: .group), sound: "ROAR"),


    ]


    func togglePlayback(for animal: Animal) {
        animals
            .forEach { item in
            if item.id == animal.id {
                item.isPlaying.toggle()
            } else {
                item.isPlaying = false
            }
        }
    }
}
