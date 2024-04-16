package board.board.dto;

import lombok.Data;
import org.hibernate.annotations.ColumnDefault;

@Data
public class BoardDto {
	
	private int boardIdx;
	
	private String title;
	
	private String contents;

	private int hitCnt;
	
	private String creatorId;
	
	private String createdDatetime;
	
	private String updaterId;
	
	private String updatedDatetime;
}