// Массив с количеством дней в месяцах
let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

// Массив с названиями месяцев
let monthNames = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

// Вывод количества дней в каждом месяце без имен месяцев
for days in daysInMonths {
    print(days)
}

print("\n")

// Вывод названия месяца и количества дней
for (index, days) in daysInMonths.enumerated() {
    print("\(monthNames[index]) - \(days) дней")
}

print("\n")

// Использование кортежей
let monthsTuples = zip(monthNames, daysInMonths).map { ($0, $1) }
for (month, days) in monthsTuples {
    print("\(month) - \(days) дней")
}

print("\n")

// Вывод дней в обратном порядке
for (month, days) in monthsTuples.reversed() {
    print("\(month) - \(days) дней")
}

print("\n")

// Подсчет количества дней до произвольной даты
let targetMonth = 5
let targetDay = 15

let daysBefore = daysInMonths.prefix(targetMonth - 1).reduce(0, +) + targetDay
print("Количество дней с начала года до \(targetDay) \(monthNames[targetMonth - 1]) - \(daysBefore) дней")