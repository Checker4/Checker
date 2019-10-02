package com.mycompany.myapp.checker.service;

import java.util.HashMap;
import java.util.List;

import com.mycompany.myapp.checker.dto.CartDto;
import com.mycompany.myapp.checker.dto.ProductDto;
import com.mycompany.myapp.checker.dto.StockDetailDto;

public interface IProductService {

	public List<ProductDto> selectProductListAllForHome();
	
	public List<ProductDto> selectProductListAll();
	
	public ProductDto selectProductDetail(int product_code);
	
	public List<StockDetailDto> selectStockListByStore(int product_code);

	public void insertProductStock(HashMap<String, String> paramMap);
	
	public void deleteProductStock(int product_code);
	
	public void updateProductStock(HashMap<String, String> paramMap);
	

	//카트에 담기
	public void addCart(HashMap<String, String> paramMap);
	
	//카트 확인
	public List<CartDto> selectCartList();
	
	//카트 삭제
	public void cartDelete(int product_code);
	
	//재고 선택 조회
	public List<ProductDto> searchProductList(HashMap<String, String> paramMap);
	
	//홈 선택 조회
	public List<ProductDto> homeProductList(HashMap<String, String> paramMap);
}
