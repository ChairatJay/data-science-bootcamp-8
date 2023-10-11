# my first R program

### interface

Enter <- function(n){
print("Enter 1 to pizzabot")
print("Enter 2 to Game")
   userinput <- readLines("stdin", n=1)
  if (userinput == 1 ) {
    source("pizzabot.r")
  } else {
    source("pao ying shub game.r")
    }
  }
Enter()

### pao ying shub game

Enter <- function(n){
print("Enter 1 to pizzabot")
print("Enter 2 to Game")
   userinput <- readLines("stdin", n=1)
  if (userinput == 1 ) {
    source("pizzabot.r")
  } else {
    source("pao ying shub game.r")
    }
  }
Enter()

### pizza bot

##  menu
menu_id <- 1:9
menu <- c("Hawiian","Super bacon","Ham and cheese","Meat lover","Chicken supreme","BBQ paradise","Seafood mania","Chrimp cooktail","Extreme cheese")
menu_price <- c(99,99,99,129,129,129,279,279,279)
menu <- data.frame(menu_id,
                  menu,
                  menu_price)

# pizza size

size_id <- c("s",
            "m",
            "l")
                 
size_price <- c(0, 100, 200 )
pizza_size <- data.frame(size_id,
                        size_price)
amount <- 0


## chat bot
pizza_chatbot<-function(){

print("Hi! Welcome to Demo pizza!!")
print ("May i have your name please")
customer <- readLines("stdin",n=1)
print(paste("Hey!",customer,"would you like to order pizza??"))
print(" Enter yes or no ")
start_order <- readLines("stdin", n = 1)
        if (start_order == "yes") {
            print ("Please see our pizza menu!")
            print (menu)
            ## order pizza
            print ("Please enter your favourite menu ID")
            order_pizza <- readLines("stdin", n = 1)
            print (paste("Perfect!", menu[menu$menu_id == order_pizza, 2]))
            amount <- amount + menu[menu$menu_id == order_pizza, 3]

           
## order size
            print ("Which size id do you prefer?")
            print (pizza_size)
            order_size <- readLines("stdin", n = 1)
            print (paste("Sound good !", menu[menu$menu_id == order_pizza, 2], "with", pizza_size[pizza_size$size_id == order_size, 1]))
            amount <- amount + pizza_size[pizza_size$size_id == order_size, 2]
         
          print("------------------------------------------------")
          print("order summary")
          print(paste("totol",amount,"bath"))
          print("thank you enjoy oyur meal")
          
}else{ 
        print(paste("see you soon",customer))
        }
  }
pizza_chatbot()


  










