# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create([
    {
        uuid: 1,
        name: "Electric Ignition Switch",
        price: 14.99,
        handle: "electric-ignition-switch",
        img: "https://loremflickr.com/425/425/motercycle?random=1",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lobortis lorem odio, vitae dignissim orci venenatis sed. Vestibulum auctor rutrum nisi nec rutrum. Vivamus id condimentum orci. Sed tristique fringilla lorem, auctor consectetur augue volutpat vel. Maecenas eu metus sodales, luctus enim vitae, accumsan magna. Etiam et viverra mi, vitae efficitur urna. Cras egestas sapien risus, nec blandit nunc tristique vitae. Duis fermentum velit pretium placerat eleifend. Mauris tempus est ut dui euismod, sit amet egestas leo facilisis. Nulla facilisi. Nunc sit amet ante id sem commodo luctus. Integer eu dolor quis orci suscipit ultrices. Morbi velit lectus, accumsan maximus arcu at, rutrum euismod purus.",
    },
    {
        uuid: 2,
        name: "Black Alloy Frame",
        price: 20.99,
        handle: "black-alloy-frame",
        img: "https://loremflickr.com/425/425/motercycle?random=2",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lobortis lorem odio, vitae dignissim orci venenatis sed. Vestibulum auctor rutrum nisi nec rutrum. Vivamus id condimentum orci. Sed tristique fringilla lorem, auctor consectetur augue volutpat vel. Maecenas eu metus sodales, luctus enim vitae, accumsan magna. Etiam et viverra mi, vitae efficitur urna. Cras egestas sapien risus, nec blandit nunc tristique vitae. Duis fermentum velit pretium placerat eleifend. Mauris tempus est ut dui euismod, sit amet egestas leo facilisis. Nulla facilisi. Nunc sit amet ante id sem commodo luctus. Integer eu dolor quis orci suscipit ultrices. Morbi velit lectus, accumsan maximus arcu at, rutrum euismod purus.",
    },
    {
        uuid: 3,
        name: "2 Stroke Engine",
        price: 23.99,
        handle: "2-stroke-engine",
        img: "https://loremflickr.com/425/425/motercycle?random=3",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lobortis lorem odio, vitae dignissim orci venenatis sed. Vestibulum auctor rutrum nisi nec rutrum. Vivamus id condimentum orci. Sed tristique fringilla lorem, auctor consectetur augue volutpat vel. Maecenas eu metus sodales, luctus enim vitae, accumsan magna. Etiam et viverra mi, vitae efficitur urna. Cras egestas sapien risus, nec blandit nunc tristique vitae. Duis fermentum velit pretium placerat eleifend. Mauris tempus est ut dui euismod, sit amet egestas leo facilisis. Nulla facilisi. Nunc sit amet ante id sem commodo luctus. Integer eu dolor quis orci suscipit ultrices. Morbi velit lectus, accumsan maximus arcu at, rutrum euismod purus.",
    },
    {
        uuid: 4,
        name: "Red Leather Seats",
        price: 42.99,
        handle: "red-leather-seats",
        img: "https://loremflickr.com/425/425/motercycle?random=4",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lobortis lorem odio, vitae dignissim orci venenatis sed. Vestibulum auctor rutrum nisi nec rutrum. Vivamus id condimentum orci. Sed tristique fringilla lorem, auctor consectetur augue volutpat vel. Maecenas eu metus sodales, luctus enim vitae, accumsan magna. Etiam et viverra mi, vitae efficitur urna. Cras egestas sapien risus, nec blandit nunc tristique vitae. Duis fermentum velit pretium placerat eleifend. Mauris tempus est ut dui euismod, sit amet egestas leo facilisis. Nulla facilisi. Nunc sit amet ante id sem commodo luctus. Integer eu dolor quis orci suscipit ultrices. Morbi velit lectus, accumsan maximus arcu at, rutrum euismod purus.",
    },
    {
        uuid: 5,
        name: "10 Speed Transmission",
        price: 5.99,
        handle: "10-speed-transmission",
        img: "https://loremflickr.com/425/425/motercycle?random=5",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lobortis lorem odio, vitae dignissim orci venenatis sed. Vestibulum auctor rutrum nisi nec rutrum. Vivamus id condimentum orci. Sed tristique fringilla lorem, auctor consectetur augue volutpat vel. Maecenas eu metus sodales, luctus enim vitae, accumsan magna. Etiam et viverra mi, vitae efficitur urna. Cras egestas sapien risus, nec blandit nunc tristique vitae. Duis fermentum velit pretium placerat eleifend. Mauris tempus est ut dui euismod, sit amet egestas leo facilisis. Nulla facilisi. Nunc sit amet ante id sem commodo luctus. Integer eu dolor quis orci suscipit ultrices. Morbi velit lectus, accumsan maximus arcu at, rutrum euismod purus.",
    },
    {
        uuid: 6,
        name: "Gold wheels & Tires",
        price: 9.99,
        handle: "gold-wheels-tires",
        img: "https://loremflickr.com/425/425/motercycle?random=6",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lobortis lorem odio, vitae dignissim orci venenatis sed. Vestibulum auctor rutrum nisi nec rutrum. Vivamus id condimentum orci. Sed tristique fringilla lorem, auctor consectetur augue volutpat vel. Maecenas eu metus sodales, luctus enim vitae, accumsan magna. Etiam et viverra mi, vitae efficitur urna. Cras egestas sapien risus, nec blandit nunc tristique vitae. Duis fermentum velit pretium placerat eleifend. Mauris tempus est ut dui euismod, sit amet egestas leo facilisis. Nulla facilisi. Nunc sit amet ante id sem commodo luctus. Integer eu dolor quis orci suscipit ultrices. Morbi velit lectus, accumsan maximus arcu at, rutrum euismod purus.",
    },

])

Discount.create([
    {
        percentage: 10,
        minimum: 20
    },
    {
        percentage: 15,
        minimum: 20
    },
    {
        percentage: 20,
        minimum: 100
    },
])

User.create([
    key: "adminadmin12",
    password: "admin"
])