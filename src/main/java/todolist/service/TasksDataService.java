package todolist.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import todolist.entity.Tasks;
import todolist.repository.TasksRepository;

@Service
public class TasksDataService {
    private final TasksRepository repository;

    public TasksDataService(TasksRepository repository) {
        this.repository = repository;
    }

    public Iterable<Tasks> findAllTasks() {
        return repository.findAll();
    }

    public Tasks findById(Long id){
        return repository.findById(id).orElse(null);
    }

    public void addTask(String title, String description) {
        Tasks task = new Tasks(title, description);
        repository.save(task);
    }

    public void deleteTask(Long id) {
        repository.deleteById(id);
    }

}
