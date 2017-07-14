☕ = "power!"
@coffee = [☕]
if @coffee.count > 0
  puts "here, take one"
  your_drink = @coffee.pop
  puts "enjoy: #{your_drink}"
else
  phuongs_magic
end

def phuongs_magic
  puts "okay boys and girls, one second"
  @coffee = @coffee + [☕️, ☕️, ☕️, ☕️, ☕️, ☕️, ☕️, ☕️, ☕️, ☕️ ]
  puts "done! enjoy 💁"
end