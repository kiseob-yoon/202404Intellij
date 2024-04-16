package board.board.entity;


import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;

@Entity
@Table(name = "t_board")
public class Board {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int boardIdx;
    private String title;
    private String contents;

    @ColumnDefault("0")
    private int hitCnt;
    private String creatorId;
    private String createdDatetime;
    private String updaterId;
    private String updatedDatetime;

    @Column(columnDefinition = "varchar(2) default 'N'")
    private String deleted_yn;
}
