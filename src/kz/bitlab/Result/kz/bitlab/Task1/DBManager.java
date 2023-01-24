package kz.bitlab.Result.kz.bitlab.Task1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.stream.Collectors;

public class DBManager {
    static ArrayList<Tasks> alltask=new ArrayList<>();


    static int id= 1;

    public static void addTask(Tasks task){   //этот метод добавляет новую задачу в список
        task.setId(id);
        id++;
         alltask.add(task);
    }
    public static Tasks getTask(int id){  // этот метод возвращает объект задачи по id
        return alltask.stream()
                .filter(Tasks->id==Tasks.getId())
                .findFirst().orElse(null);


    }
    public static ArrayList getAllTasks(){  //этот метод возвращает список всех задач
         return alltask;
    }
    public static void deleteTask(int id){ //этот метод удаляет задачу из списка по id}

        alltask.remove(id);

    }
    public static ArrayList SortByAlph(){
       ArrayList k=alltask.stream().sorted((x,y)-> x.getName().compareTo(y.getName()))
                .collect(Collectors.toCollection(()->new ArrayList<>()));
       return k;
    }
    public static ArrayList SortByData(){
        ArrayList k=alltask.stream().sorted((x,y)-> x.getDeadlineDate().compareTo(y.getDeadlineDate()))
                .collect(Collectors.toCollection(()->new ArrayList<>()));
        return k;}
}
