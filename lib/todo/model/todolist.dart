class ToDoObj{
  String? id;
  String? todoText;
  bool isDone;

  ToDoObj({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDoObj> toDoList(){return[
    ToDoObj(id: '01', todoText: "Помыть собаку"),
    ToDoObj(id: '02', todoText: "Выполнить ИДЗ по обд"),
    ToDoObj(id: '03', todoText: "Подготовить результирующую программу по ТП", isDone: true),
    ToDoObj(id: '04', todoText: "Написать отчет по курсовой"),
    ToDoObj(id: '05', todoText: "Снять деньги"),
    ToDoObj(id: '06', todoText: "Прочитать 'Превращение' - Кафка"),
    ToDoObj(id: '07', todoText: "Прочитать 'Iphuck 10' - Виктор Пелевин"),
    ToDoObj(id: '08', todoText: "Прочитать 'Цветы для Элджернона' - Дэниэл Киз")
  ];}
}