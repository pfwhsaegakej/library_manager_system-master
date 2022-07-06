package com.pys.domain.Vo;

import com.pys.domain.Book;
import com.pys.domain.User;
import lombok.Data;

/**
 * @author zbw
 * 添加视图层对象
 * 新增属性 user
 */
@Data
public class BorrowingBooksVo {
    private User user;
    private Book book;  //借阅书籍
    private String dateOfBorrowing;  //借书日期
    private String dateOfReturn;    //还书日期
}
