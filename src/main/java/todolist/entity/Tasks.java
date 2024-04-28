package todolist.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Table(name = "Задания")
public class Tasks {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

    @Column(name = "Название")
    private String title;

    @Column(name = "Описание")
    private String description;

    public Tasks(String title, String description) {
        this.title = title;
        this.description = description;
    }
}
