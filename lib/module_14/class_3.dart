import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController taskController = TextEditingController();
  List<String> tasks = [];

  addTask(){
    final task = taskController.text;
    if(task.isNotEmpty){
      setState(() {
        tasks.add(task);
        taskController.clear();
      });
    }

  }
  
  editTask(int index){
    final controller = TextEditingController(text: tasks[index]);
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Edit Task'),
      content: TextField(
        controller: controller,
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Cancle')),
        ElevatedButton(onPressed: (){
          final newValue = controller.text;
          setState(() {
            if(newValue.isNotEmpty){
              tasks[index] = controller.text;
              Navigator.pop(context);
            }

          });
        }, child: Text('Update'))
      ],
    ));
  }

  deleteTask(int index){
    setState(() {
      tasks.removeAt(index);
      Navigator.pop(context);
    });
  }

  confirmDelete(int index){

    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Delete Task...?'),
      content: Text('Are you sure want to delete the task'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Cancle')),
        ElevatedButton(onPressed: ()=>deleteTask(index), child: Text('Delete'))
      ],
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo app'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: taskController,
                  decoration: InputDecoration(labelText: 'Enter Task'),
                )),
                SizedBox(
                  width: 8,
                ),
                ElevatedButton(onPressed: addTask, child: Text('Add'))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: ()=>editTask(index),
                            icon: Icon(
                              Icons.edit,
                              color: Colors.blue,
                            )),
                              
                        IconButton(
                            onPressed: ()=>confirmDelete(index),
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            )),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
