package service.impl;

import bean.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private static IProductRepository iProductRepository = new ProductRepository();

    @Override
    public List<Product> getAll() {
        try {
            List<Product> products = iProductRepository.getAll();
            if (products.size() == 0) {
                return null;
            }
            return products;
        } catch (Exception e) {
            System.out.println("ERROR!");
            return null;
        }
    }

    @Override
    public boolean saveProduct(Product product) {
        if (checkProduct(product)) {
            iProductRepository.saveProductRepository(product);
            return true;
        } else {
            return false;
        }

    }

    public boolean checkProduct(Product product) {
        if (product.getPrice() < 0) {
            return false;
        }
        return true;
    }
}
