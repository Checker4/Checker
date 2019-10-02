package com.mycompany.myapp.checker.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.myapp.checker.dto.CartDto;
import com.mycompany.myapp.checker.dto.ProductDto;
import com.mycompany.myapp.checker.dto.StockDetailDto;

@Repository
public class ProductDaoImpl implements IProductDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ProductDto> selectProductListAllForHome() {
		List<ProductDto> productListAllForHome = new ArrayList<ProductDto>();
		productListAllForHome = sqlSession.selectList("productMapper.selectProductListAllForHome");
		
		return productListAllForHome;
	}
	
	@Override
	public List<ProductDto> selectProductListAll() {
		List<ProductDto> productListAll = new ArrayList<ProductDto>();
		productListAll = sqlSession.selectList("productMapper.selectProductListAll");
		
//		System.out.println("here!!!!"+productListAll);
		return productListAll;
	}
	
	@Override
	public ProductDto selectProductDetail(int product_code) {
		ProductDto productDto = sqlSession.selectOne("productMapper.selectProductDetail", product_code);
		
		System.out.println("here!!!!"+productDto);
		return productDto;
	}

	@Override
	public List<StockDetailDto> selectStockListByStore(int product_code) {
		List<StockDetailDto> stockListByStore = new ArrayList<StockDetailDto>();
		stockListByStore = sqlSession.selectList("productMapper.selectStockListByStore", product_code);
		
		return stockListByStore;
	}
	
	@Override
	public void insertProductStock(HashMap<String, String> paramMap) {
		sqlSession.selectOne("productMapper.insertProductStock", paramMap);
	}
	
	@Override
	public void deleteProductStock(int product_code) {
		sqlSession.selectOne("productMapper.deleteProductStock", product_code);
	}
	
	@Override
	public void updateProductStock(HashMap<String, String> paramMap) {
		sqlSession.selectOne("productMapper.updateProductStock", paramMap);
	}
	

	//카트에 담기
	@Override
	public void addCart(HashMap<String, String> paramMap){
		System.out.println("Dao"+paramMap);
		sqlSession.insert("productMapper.addCart", paramMap);		
	}

	//카트 리스트 확인
	@Override
	public List<CartDto> selectCartList() {
		List<CartDto> CartList = new ArrayList<CartDto>();
		CartList = sqlSession.selectList("productMapper.selectCartList");		
		return CartList;
	}
	
	//카트 삭제
	@Override
	public void cartDelete(int product_code) {
		sqlSession.delete("productMapper.cartDelete", product_code);		
	}

	//재고 선택 조회
	@Override
	public List<ProductDto> searchProductList(HashMap<String, String> paramMap) {
		List<ProductDto> searchProductList =  new ArrayList<ProductDto>();
		searchProductList = sqlSession.selectList("productMapper.searchProductList", paramMap);
		return searchProductList;
	}
	
	//홈 선택 조회
	@Override
	public List<ProductDto> homeProductList(HashMap<String, String> paramMap) {
		List<ProductDto> homeProductList =  new ArrayList<ProductDto>();
		homeProductList = sqlSession.selectList("productMapper.homeProductList", paramMap);
		return homeProductList;
	}
}
