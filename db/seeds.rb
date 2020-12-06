# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

item_names = ["Avocado", "Floral", "Taco", "Corgi", "Paw", "Coffee", "Tree", "Meow", "Cat", "Doggo", "Music", "Bike", "Rainbow", "Wave", "Code", "Headphone", "Donut", "Pineapple", "Baby Yoda", "Unitee"]

item_names.map { |item|
    price = rand(10..15)
    clearance = [true, false].sample
    Item.create(name:item, price:price, clearance:clearance)
}

# ----- avo ----->
Image.create(image_url:"https://i.postimg.cc/FFwJTqj0/AVO1.png", color: "black", item_id:1)
Image.create(image_url:"https://i.postimg.cc/R0C33zBx/AVO5.png", color: "white", item_id: 1)
Image.create(image_url:"https://i.postimg.cc/t4jnjxvT/AVO2.png", color: "red", item_id: 1)
Image.create(image_url:"https://i.postimg.cc/RVfJyRRy/AVO3.png", color: "blue", item_id: 1)
Image.create(image_url:"https://i.postimg.cc/jS4wdSBh/AVO4.png", color: "green", item_id: 1)

# ----- floral ----->
Image.create(image_url:"https://i.postimg.cc/FKy299LP/FLORAL2.png", color: "white", item_id:2)
Image.create(image_url:"https://i.postimg.cc/fbnGn3Jt/FLORAL1.png", color: "black", item_id:2)
Image.create(image_url:"https://i.postimg.cc/j5RB2G6R/FLORAL3.png", color: "maroon", item_id:2)
Image.create(image_url:"https://i.postimg.cc/vBXkV3Xf/floral4.png", color: "blue", item_id:2)
Image.create(image_url:"https://i.postimg.cc/C51tHk6t/floral5.png", color: "green", item_id:2)

## ----- taco ----->
Image.create(image_url:"https://i.postimg.cc/tR8QtmpN/TACO1.png", color: "white", item_id:3)
Image.create(image_url:"https://i.postimg.cc/FR180066/TACO5.png", color: "blue", item_id:3)
Image.create(image_url:"https://i.postimg.cc/t4tKbqPB/TACO2.png", color: "green", item_id:3)
Image.create(image_url:"https://i.postimg.cc/pdWgXwJR/TACO3.png", color: "red", item_id:3)
Image.create(image_url:"https://i.postimg.cc/7LKjCKK7/TACO4.png", color: "black", item_id:3)

## ----- corgi ----->
Image.create(image_url:"https://i.postimg.cc/5NkJGNBL/corgi1.png", color: "white", item_id:4)
Image.create(image_url:"https://i.postimg.cc/g03PnVfH/corgi3.png", color: "tan", item_id:4)
Image.create(image_url:"https://i.postimg.cc/jSpbxgkj/corgi2.png", color: "ash", item_id:4)

## ----- paw ----->
Image.create(image_url:"https://i.postimg.cc/MTs3TXKY/paw1.png", color: "white", item_id:5)
Image.create(image_url:"https://i.postimg.cc/cC2DRj3g/paw3.png", color: "maroon", item_id:5)
Image.create(image_url:"https://i.postimg.cc/J0G6BmsC/paw2.png", color: "black", item_id:5)
Image.create(image_url:"https://i.postimg.cc/jqFkYW1x/paw4.png", color: "ash", item_id:5)
Image.create(image_url:"https://i.postimg.cc/yY3p11qF/paw5.png", color: "blue", item_id:5)

## ----- coffee ----->
Image.create(image_url:"https://i.postimg.cc/J0p8RR9w/coffee1.png", color: "white", item_id:6)
Image.create(image_url:"https://i.postimg.cc/RCd47TqP/coffee2.png", color: "ash", item_id:6)

## ----- tree ----->
Image.create(image_url:"https://i.postimg.cc/V6TTgdQk/tree1.png", color: "white", item_id:7)
Image.create(image_url:"https://i.postimg.cc/28nJdkHC/tree4.png", color: "grey", item_id:7)
Image.create(image_url:"https://i.postimg.cc/907knCCt/tree2.png", color: "ash", item_id:7)
Image.create(image_url:"https://i.postimg.cc/DfJRZdLJ/tree3.png", color: "tan", item_id:7)

## ----- meow ----->
Image.create(image_url:"https://i.postimg.cc/VvmsYGvt/catt1.png", color: "blue", item_id:8)
Image.create(image_url:"https://i.postimg.cc/KjfG4P3H/catt2.png", color: "white", item_id:8)
Image.create(image_url:"https://i.postimg.cc/BZBQh07B/catt3.png", color: "black", item_id:8)
Image.create(image_url:"https://i.postimg.cc/ht6SJPhc/catt4.png", color: "maroon", item_id:8)
Image.create(image_url:"https://i.postimg.cc/rwKVFtVf/catt5.png", color: "green", item_id:8)

## ----- cat ----->
Image.create(image_url:"https://i.postimg.cc/13jzpr7x/cat1.png", color: "white", item_id:9)
Image.create(image_url:"https://i.postimg.cc/h4LhHxvx/cat2.png", color: "black", item_id:9)
Image.create(image_url:"https://i.postimg.cc/hjFPYPqp/cat3.png", color: "maroon", item_id:9)
Image.create(image_url:"https://i.postimg.cc/Lsg8vgGJ/cat4.png", color: "green", item_id:9)
Image.create(image_url:"https://i.postimg.cc/76gYr8HD/cat5.png", color: "blue", item_id:9)

## ----- doggo ----->
Image.create(image_url:"https://i.postimg.cc/ZKqZVydJ/doggo1.png", color: "black", item_id:10)
Image.create(image_url:"https://i.postimg.cc/nhjxtb25/doggo4.png", color: "blue", item_id:10)
Image.create(image_url:"https://i.postimg.cc/76Dr7C48/doggo2.png", color: "maroon", item_id:10)
Image.create(image_url:"https://i.postimg.cc/Y93Kxp24/doggo3.png", color: "green", item_id:10)
Image.create(image_url:"https://i.postimg.cc/C5xyPWdc/doggo5.png", color: "white", item_id:10)

## ----- music ----->
Image.create(image_url:"https://i.postimg.cc/ZY7XYsWh/music1.png", color: "white", item_id:11)
Image.create(image_url:"https://i.postimg.cc/X7rmrK5B/music2.png", color: "ash", item_id:11)
Image.create(image_url:"https://i.postimg.cc/jdB9PW6g/music3.png", color: "grey", item_id:11)
Image.create(image_url:"https://i.postimg.cc/zGWQjJ0J/music4.png", color: "tan", item_id:11)

## ----- bike ----->
Image.create(image_url:"https://i.postimg.cc/hvBvX4yf/bike1.png", color: "black", item_id:12)
Image.create(image_url:"https://i.postimg.cc/TYQ1P6r3/bike2.png", color: "maroon", item_id:12)
Image.create(image_url:"https://i.postimg.cc/2S66bKwF/bike3.png", color: "green", item_id:12)
Image.create(image_url:"https://i.postimg.cc/Kvm4Fz3W/bike4.png", color: "blue", item_id:12)

## ----- rainbow ----->
Image.create(image_url:"https://i.postimg.cc/QC2b97Lc/rainbow1.png", color: "white", item_id:13)
Image.create(image_url:"https://i.postimg.cc/MHM5pDLW/rainbow2.png", color: "black", item_id:13)
Image.create(image_url:"https://i.postimg.cc/pLtw3h99/rainbow3.png", color: "maroon", item_id:13)
Image.create(image_url:"https://i.postimg.cc/vH9RPLmF/rainbow4.png", color: "green", item_id:13)
Image.create(image_url:"https://i.postimg.cc/CMRp8VTK/rainbow5.png", color: "blue", item_id:13)

## ----- wave ----->
Image.create(image_url:"https://i.postimg.cc/Z5cMgftg/wave1.png", color: "white", item_id:14)
Image.create(image_url:"https://i.postimg.cc/Y9JngZY4/wave5.png", color: "yellow", item_id:14)
Image.create(image_url:"https://i.postimg.cc/dVvf4bXr/wave2.png", color: "black", item_id:14)
Image.create(image_url:"https://i.postimg.cc/GpgS3Hpx/wave3.png", color: "maroon", item_id:14)
Image.create(image_url:"https://i.postimg.cc/bJGVZpDc/wave4.png", color: "blue", item_id:14)

## ----- code ----->
Image.create(image_url:"https://i.postimg.cc/J4T7LQLy/code1.png", color: "white", item_id:15)
Image.create(image_url:"https://i.postimg.cc/X7NNmzTS/code2.png", color: "black", item_id:15)
Image.create(image_url:"https://i.postimg.cc/bvnq1c2b/code3.png", color: "maroon", item_id:15)
Image.create(image_url:"https://i.postimg.cc/TwXf97rs/code4.png", color: "green", item_id:15)
Image.create(image_url:"https://i.postimg.cc/hvDgFXZb/code5.png", color: "blue", item_id:15)

## ----- headphone ----->
Image.create(image_url:"https://i.postimg.cc/MHFLsHCG/muiscc1.png", color: "black", item_id:16)
Image.create(image_url:"https://i.postimg.cc/1zQj7LjD/musicc2.png", color: "maroon", item_id:16)
Image.create(image_url:"https://i.postimg.cc/7LnQFmFd/musicc3.png", color: "green", item_id:16)
Image.create(image_url:"https://i.postimg.cc/9MXNCyVM/musicc4.png", color: "blue", item_id:16)

## ----- donut ----->
Image.create(image_url:"https://i.postimg.cc/8cK2qt6N/donut1.png", color: "white", item_id:17)
Image.create(image_url:"https://i.postimg.cc/qB1HhMZS/donut2.png", color: "black", item_id:17)
Image.create(image_url:"https://i.postimg.cc/7Yb8g8F6/donut3.png", color: "maroon", item_id:17)
Image.create(image_url:"https://i.postimg.cc/wTPK24zk/donut4.png", color: "green", item_id:17)
Image.create(image_url:"https://i.postimg.cc/pLnw6QXM/donut5.png", color: "blue", item_id:17)

## ----- pineapple ----->
Image.create(image_url:"https://i.postimg.cc/vZRqDJMC/pineapple1.png", color: "blue", item_id:18)
Image.create(image_url:"https://i.postimg.cc/jSz8fMS2/pineapple2.png", color: "white", item_id:18)
Image.create(image_url:"https://i.postimg.cc/q741x2NL/pineapple3.png", color: "black", item_id:18)
Image.create(image_url:"https://i.postimg.cc/qR7Q90X6/pineapple4.png", color: "green", item_id:18)
Image.create(image_url:"https://i.postimg.cc/tTmDbf2S/pineapple5.png", color: "maroon", item_id:18)

## ----- baby yoda ----->
Image.create(image_url:"https://i.postimg.cc/j2jgNtPF/yoda2.png", color: "ash", item_id:19)
Image.create(image_url:"https://i.postimg.cc/RhbPLyTV/yoda3.png", color: "yellow", item_id:19)
Image.create(image_url:"https://i.postimg.cc/Y0fFpWvc/yoda1.png", color: "white", item_id:19)


## ----- Unitee ----->
Image.create(image_url:"https://i.postimg.cc/DZnYvqZF/unitee1.png", color: "white", item_id:20)
Image.create(image_url:"https://i.postimg.cc/2jHXYLfR/unitee2.png", color: "ash", item_id:20)
Image.create(image_url:"https://i.postimg.cc/j5c3LLwf/unitee3.png", color: "grey", item_id:20)

