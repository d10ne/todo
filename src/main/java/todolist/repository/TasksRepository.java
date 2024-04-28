package todolist.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import todolist.entity.Tasks;

@Repository
public interface TasksRepository extends JpaRepository<Tasks, Long> {
}
