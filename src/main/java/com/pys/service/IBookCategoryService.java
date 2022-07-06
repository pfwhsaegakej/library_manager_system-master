package com.pys.service;

import com.pys.domain.BookCategory;
import com.pys.utils.page.Page;

import java.util.List;

public interface IBookCategoryService {

    //图书类别分页查询
    public Page<BookCategory> selectBookCategoryByPageNum(int pageNum);

    int deleteBookCategoryById(int bookCategoryId);

    List<BookCategory> selectAllBookCategories();
}
