#make a list of entrees

@entrees= [
  
  {name: "spaghetti",price:"5.00"},
  {name:"Hot Dog",price:"100.00"},
  {name:"Pizza",price:"20.00",},
]
#make a list of appatizers
  @appatizers=[
  {name: "soup",price:"8.00"},
  {name:"salad",price:"6.00"},
  {name:"Fries",price:"10.00"},
  ]

  #user input choices ifs
@order = []

def menu
    puts 'What would your appatizer this evening?'
    puts '1) Spaghetti (5.00)'
    puts '2) hot dog (100'
    puts '3) pizza (20.00)'
    puts '4) Start Over'
    @user_main_choice = gets.chomp 
    case @user_Entrees
    when '1' 
      entrees = @main_menu[0]
    when '2'
      entrees = @main_menu[1]
    when '3'
      entrees = @main_menu[2]
    when '4'
      @order.clear 
      menu
    else
      puts 'Ivalid entry, please try again.'
      menu 
    end
    @order << Entrees
  end 


  def appatizers
  puts "what appatizers would you like?"
  puts '1) soup (2.00)'
  puts '2) salad (6.00)'
  puts '3) fries(10.00)'
  puts '4) start over'
  @user_appatizers =gets.chomp
  case @user_appatizers
  when '1' 
    user_appatizers = @appatizers[0]
  when '2'
    user_appatizers = @appatizers[1]
  when '3'
    user_appatizers = @appatizers[2]
  when '4'
    @order.clear 
    menu
  else
    puts 'Ivalid entry, please try again.'
    menu 
  end
  @order << appatizers
end 

def total(entrees, appatizers1, appatizers2)
  puts "Here is your order #{entree[:name]}, #{appatizers1[:name]} and #{appatizers2[:name]}."
  cost = entrees[:price] + appatizers1[:price] + appatizers2[price]
  puts "your total is #{cost}."
end

menu

appatizers_count =0

while appatizers_count < 2 do
  appatizers_count = appatizers_count + 1
  appatizers
end

total(@order[0],@order[1],@order[2])
