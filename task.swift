let month_days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let month_names = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

for day in month_days {
  print(day, terminator: " ")
}

print("\n")

for (index, name) in month_names.enumerated() {
  print(name, month_days[index])
}

print("")

let month_tuples = [
  (month: "Январь", days: 31),
  (month: "Февраль", days: 29),
  (month: "Март", days: 31),
  (month: "Апрель", days: 30),
  (month: "Май", days: 31),
  (month: "Июнь", days: 30),
  (month: "Июль", days: 31),
  (month: "Август", days: 31),
  (month: "Сентябрь", days: 30),
  (month: "Октябрь", days: 31),
  (month: "Ноябрь", days: 30),
  (month: "Декабрь", days: 31)
]

for month in month_tuples {
  print("\(month.month) - \(month.days) дней")
}

print("")

for (index, name) in month_names.enumerated().reversed() {
  print(name, month_days[index])
}

let selectedMonthIndex = 4
let selectedDay = 15

var daysCount = 0

for (index, dayCount) in month_days.enumerated() where index <= selectedMonthIndex {
    if (index == selectedMonthIndex) {
      daysCount += selectedDay
    } else {
      daysCount += dayCount
    }
}

print("\nКоличество дней c начала года до \(selectedDay) \(month_names[selectedMonthIndex]) = \(daysCount)")
