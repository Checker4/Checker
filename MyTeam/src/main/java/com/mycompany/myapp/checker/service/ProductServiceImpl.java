package com.mycompany.myapp.checker.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.checker.dao.ProductDaoImpl;
import com.mycompany.myapp.checker.dto.CartDto;
import com.mycompany.myapp.checker.dto.ProductDto;
import com.mycompany.myapp.checker.dto.StockDetailDto;

@Service
public class ProductServiceImpl implements IProductService {

	@Autowired
	private ProductDaoImpl productDaoImpl;
	
	@Override
	public List<ProductDto> selectProductListAllForHome() {
		return productDaoImpl.selectProductListAllForHome();
	}
	
	@Override
	public List<ProductDto> selectProductListAll() {
		//System.out.println("---ProductServiceImpl---");
		return productDaoImpl.selectProductListAll();
	}
	
	@Override
	public ProductDto selectProductDetail(int product_code) {
		return productDaoImpl.selectProductDetail(product_code);
	}

	@Override
	public List<StockDetailDto> selectStockListByStore(int product_code) {
		return productDaoImpl.selectStockListByStore(product_code);
	}
	
	@Override
	public void insertProductStock(HashMap<String, String> paramMap) {
		productDaoImpl.insertProductStock(paramMap);
	}
	
	@Override
	public void deleteProductStock(int product_code) {
		productDaoImpl.deleteProductStock(product_code);
	}
	
	@Override
	public void updateProductStock(HashMap<String, String> paramMap) {
		productDaoImpl.updateProductStock(paramMap);
	}
	

	//카트에 담기
	@Override
	public void addCart(HashMap<String, String> paramMap) {
		System.out.println("Service"+paramMap);
		productDaoImpl.addCart(paramMap);
	}

	//카트 리스트 확인
	@Override
	public List<CartDto> selectCartList() {
		return productDaoImpl.selectCartList();
	}

	//카트 삭제
	@Override
	public void cartDelete(int product_code) {
		productDaoImpl.cartDelete(product_code);		
	}
	
	//재고 선택 조회
	@Override
	public List<ProductDto> searchProductList(HashMap<String, String> paramMap) {
		return productDaoImpl.searchProductList(paramMap);
	}
	
	//홈 선택 조회
	@Override
	public List<ProductDto> homeProductList(HashMap<String, String> paramMap) {
		return productDaoImpl.homeProductList(paramMap);
	}
	
}
