#usuarios
admin = User.create(email: "admin@royalcare.cl", password: 'admin+', password_confirmation: 'admin+', first_name:"Benjamín", last_name: "Núñez", admin_role: true)
supervisor = User.create(email: "supervisor@royalcare.cl", password: 'admin+', password_confirmation: 'admin+', first_name:"Benjamín2", last_name: "Núñez", supervisor_role: true)
user = User.create(email: "user@royalcare.cl", password: 'admin+', password_confirmation: 'admin+', first_name:"Benjamín3", last_name: "Núñez")


#Colores
naranjo = Color.create(name:"Naranjo")
verde = Color.create(name:"Verde")
negro = Color.create(name:"Negro")

#Categorias
deportivo = Category.create(name:'Deportivo')
arnes = Category.create(name:'Arnés')
collar = Category.create(name:'Collar')
winter = Category.create(name:'Invierno')
food = Category.create(name:'Comida')
leash = Category.create(name:'Correa')
puppy = Category.create(name:'Puppy')
bed = Category.create(name:'Cama')

#Razas

small = Breed.create(name: 'Pequeño')
medium = Breed.create(name: 'Mediano')
big = Breed.create(name: 'Grande')





#Arnés Outdoor
arnes_outdoor = Product.create(name:'Arnés Outdoor',description: "Un arnés ideal para cualquier actividad, desde paseos en la ciudad hasta en la montaña. Este arnés posee una manilla para aquellos momentos donde es necesario sujetar a nuestros perros, además cuenta con un mecanismo anti-tirón.")
ProductSpecification.create(size: 'XS', price:15000, product:arnes_outdoor)
ProductSpecification.create(size: 'S', price:17000, product:arnes_outdoor)
ProductSpecification.create(size: 'M', price:21000, product:arnes_outdoor)
ProductSpecification.create(size: 'L', price:25000, product:arnes_outdoor)
ProductSpecification.create(size: 'XL', price:30000, product:arnes_outdoor)

ProductCategory.create(product: arnes_outdoor, category:arnes)
ProductCategory.create(product: arnes_outdoor, category:deportivo)

ProductColor.create(product: arnes_outdoor, color:naranjo)
ProductColor.create(product: arnes_outdoor, color:verde)
ProductColor.create(product: arnes_outdoor, color:negro)

#Collar Reflectante
collar_outdoor = Product.create(name:'Collar Reflectante',description: "Un collar de textura agradable con reflectante para la noche. De alta resistencia y duración.")
ProductSpecification.create(size: 'XXS', price:4500, product:collar_outdoor)
ProductSpecification.create(size: 'XS', price:4500, product:collar_outdoor)
ProductSpecification.create(size: 'S', price:5000, product:collar_outdoor)
ProductSpecification.create(size: 'M', price:5000, product:collar_outdoor)
ProductSpecification.create(size: 'L', price:5500, product:collar_outdoor)
ProductSpecification.create(size: 'XL', price:5500, product:collar_outdoor)
ProductSpecification.create(size: 'XXL', price:6000, product:collar_outdoor)
ProductSpecification.create(size: 'XXXL', price:6000, product:collar_outdoor)

ProductCategory.create(product: collar_outdoor, category:collar)
ProductCategory.create(product: collar_outdoor, category:deportivo)

ProductColor.create(product: collar_outdoor, color:naranjo)
ProductColor.create(product: collar_outdoor, color:verde)
ProductColor.create(product: collar_outdoor, color:negro)
