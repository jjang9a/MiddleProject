package co.start.vo;

import lombok.Data;

@Data
public class PageDTO {
     private int startPage;
     private int endPage;
     private boolean prev; 
     private boolean next;
     private int page;
     
     public PageDTO(int page, int total) {
    	 this.page = page;
    	 this.endPage = (int) Math.ceil(page/10.0)*10;
    	 this.startPage = this.endPage -9;
    	 
    	 int realEnd = (int) Math.ceil(total*1.0/ 10);
    	 if(this.endPage > realEnd) {
    		 this.endPage = realEnd;
    	 }
    	 
    	 this.prev = this.startPage >1;
    	 this.next = this.endPage < realEnd;
     }
}
