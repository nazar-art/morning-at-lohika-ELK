curl -XPOST http://localhost:9200/cars/car/_bulk -d '{ "create" : {} }
{ "make": "Nissan", "model" : "Leaf SL", "year" : 2014, "mileage" : 7000, "motor" : { "engine_type" : "electric" }, "price" : 21400 }
{ "create" : {} }
{ "make" : "Smart", "model" : "Fortwo 0.6AC", "year" : 2001, "mileage" : 150000, "motor" : { "engine_type" : "petrol", "displacement" : 0.6 }, "price" : 3900 }
{ "create" : {} }
{ "make" : "Mercedes-Benz", "model" : "E-Class", "year" : 2009, "mileage" : 197000, "motor" : { "engine_type" : "diesel", "displacement" : 2.2 }, "price" : 27000 }
{ "create" : {} }
{ "make" : "Mercedes-Benz", "model" : "E320", "year" : 2001, "mileage" : 300000, "motor" : { "engine_type" : "petrol", "displacement" : 3.2 }, "price" : 10999 }
{ "create" : {} }
{ "make" : "Mitsubishi", "model" : "Pajero Wagon", "year" : 2007, "mileage" : 150000, "motor" : { "engine_type" : "petrol", "displacement" : 2.7 }, "price" : 15500 }
'

