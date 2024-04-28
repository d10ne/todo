package todolist.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import todolist.entity.Tasks;
import todolist.repository.TasksRepository;
import todolist.service.TasksDataService;

import java.util.ArrayList;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
@RequestMapping("tasks/")
public class ToDoListController {

    private final TasksRepository tasksRepository;

    private final TasksDataService tasksDataService;

    @GetMapping("list")
    public String tasksList(Model model) {
        Iterable<Tasks> tasks = tasksDataService.findAllTasks();
        model.addAttribute("tasks", tasks);

        return "index";
    }

    @GetMapping("add")
    public String addTask(Model model) {
        return "add";
    }

    @PostMapping("add")
    public String AddTask(@RequestParam String title, @RequestParam String description, Model model) {
        tasksDataService.addTask(title, description);

        return "redirect:/tasks/list";
    }

    @PostMapping("{id}/delete")
    public String taskDelete(@PathVariable("id") Long id, Model model) {
        tasksDataService.deleteTask(id);

        return "redirect:/tasks/list";
    }

    @GetMapping("{id}/details")
    public String taskUpdate(@PathVariable("id") Long id, Model model) {
        if (!tasksRepository.existsById(id)) {
            return "redirect:/tasks/list";
        }

        Optional<Tasks> task = tasksRepository.findById(id);
        ArrayList<Tasks> res = new ArrayList<>();
        task.ifPresent(res::add);
        model.addAttribute("task", res);

        return "details";
    }


    @PostMapping("{id}/details")
    public String taskEdit(@PathVariable("id") Long id, @RequestParam String title, @RequestParam String description, Model model) {
        if (!tasksRepository.existsById(id)) {
            return "redirect:/tasks/list";
        }
        Tasks task = tasksRepository.findById(id).orElseThrow();
        task.setTitle(title);
        task.setDescription(description);
        tasksRepository.save(task);

        return "redirect:/tasks/list";
    }
}
