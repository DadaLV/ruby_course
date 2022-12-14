# Створити змінну lambda1, в якій буде зберігатися лямбда-функція з таким функціоналом:

# функція буде повертати кількість розрядів в числі у випадку, якщо їх не більше 6
# якщо кількість цифр у числі буде дорівнювати як мінімум 6, то ця лямбда-функція повертає рядок "Недопустима кількість розрядів. Число повинно бути не більше, ніж 5-розрядним"
# Наприклад,

# lambda1.call(15) => 2
# lambda1.call(123456) => рядок Недопустима кількість розрядів. Число повинно бути не більше, ніж 5-розрядним

lambda1 = lambda {|num|
if (num.to_s.length < 6)
num.to_s.length
else "Недопустима кількість розрядів. Число повинно бути не більше, ніж 5-розрядним"
end}
puts lambda1.call(15)
puts lambda1.call(123456)