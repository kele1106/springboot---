package com.example.demo.controller;

import com.example.demo.entity.Books;
import com.example.demo.service.BooksService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Books)表控制层
 *
 * @author makejava
 * @since 2020-01-29 14:49:16
 */
@RestController
@RequestMapping("books")
public class BooksController {
    /**
     * 服务对象
     */
    @Resource
    private BooksService booksService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Books selectOne(Integer id) {
        return this.booksService.queryById(id);
    }
    @PostMapping("selectAll")
    public List<Books> selectAll() {
        return this.booksService.queryAllByLimit(0,3);
    }
}