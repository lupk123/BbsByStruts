package com.bbs.action;

import com.bbs.model.Category;
import com.bbs.service.CategoryService;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by Administrator on 2016/7/30.
 */
public class CategoryAction extends ActionSupport {
    private List<Category> categories;
    private Category category;
    private int id;

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public String addInput() throws Exception{
        CategoryService.add(category);
        return SUCCESS;
    }

    public String add(){
        return SUCCESS;
    }

    public String updateInput() throws Exception{
        CategoryService.update(category);
        return SUCCESS;
    }

    public String update() throws Exception{
        category = CategoryService.getCategory(id);
        return SUCCESS;
    }

    public String delete() throws Exception{
        CategoryService.delete(id);
        return SUCCESS;
    }

    public String list() throws Exception{
        categories = CategoryService.getCategories();
        return SUCCESS;
    }

}
