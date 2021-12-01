package repository.impl;

import bean.Product;
import repository.IProductRepository;

import java.util.*;

public class ProductRepository implements IProductRepository {
    private static Map<Integer, Product> productList = new HashMap<>();

    static{
        productList.put(1,new Product("Socola",12000,"CacaoGroup"));
        productList.put(2,new Product("Coca",8000,"Cocacola"));
        productList.put(3,new Product("Pepsi",8000,"PepsiGroup"));
        productList.put(4,new Product("MilkCandy",3000,"Vinamilk"));
    }

    @Override
    public List<Product> getAll() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public void saveProductRepository(Product product) {
        productList.put(0,product);
    }
}
