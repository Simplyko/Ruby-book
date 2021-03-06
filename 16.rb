# Задание: напишите хеш, который бы отображал состояние следующего приложения:

json = {
  online_bank: [{
    client: 'Герман Оскарович Блокчейн',
    balance: 123.45,
    list_name: 'Список транзакций',
    list: [
      {
        text: 'Сапоги',
        type: 'расход',
        sum: 40
      },
      {
        text: 'Зарплата (компания БЛИЖП)',
        type: 'приход',
        sum: 1000
      },
      {
        text: 'Продажа Ваучера',
        type: 'приход',
        sum: 300
      },
      {
        text: 'Велосипед',
        type: 'расход',
        sum: 200
      },
      {
        text: 'Протез для ноги бабушке',
        type: 'расход',
        sum: 300
      }
    ],
    visibility_filter: :show_all
  }]
}

puts json
