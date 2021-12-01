package service;

import bean.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAll();

    boolean saveProduct(Product product);
}
