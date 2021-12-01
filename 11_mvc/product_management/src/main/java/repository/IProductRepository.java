package repository;

import bean.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> getAll();

    void saveProductRepository(Product product);
}
