package com.mycompany.myapp.checker.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.myapp.checker.dto.CartDto;
import com.mycompany.myapp.checker.dto.ProductDto;
import com.mycompany.myapp.checker.dto.StockDetailDto;
import com.mycompany.myapp.checker.service.ProductServiceImpl;

@Controller
public class ProductController {
	
	@Autowired
	private ProductServiceImpl productServiceImpl;

	@RequestMapping(value = "/index")
	public String index() {
		return "checker/index";
	}
	
	@RequestMapping(value = "/test")
	public String test() {
		return "checker/product/test";
	}

	//홈
	@RequestMapping(value = "/home")
	public String home(Model model) {
		List<ProductDto> productListAllForHome = productServiceImpl.selectProductListAllForHome();
		model.addAttribute("list", productListAllForHome);
		return "checker/product/Lhome";
	}
	
	// 홈 조건 조회 (admin)
	@RequestMapping(value = "/product/homeSearch")
	public ModelAndView homeSearch(@RequestParam HashMap<String, String> paramMap, Model model) {
		System.out.println("Controller paramMap=" + paramMap);
		List<ProductDto> productList = productServiceImpl.homeProductList(paramMap);
		for (int i = 0; i < productList.size(); i++) {
			ProductDto dto = (ProductDto) productList.get(i);
			dto.toString();
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", productList);
		mv.setViewName("checker/product/Lhome");

		return mv;
	}
	
	// 1. 상품 전체 조회
	@RequestMapping(value = "/product/list")
	public String productList(Model model) {
		List<ProductDto> productListAll = productServiceImpl.selectProductListAll();
		model.addAttribute("list", productListAll);
//		System.out.println("-----controller----");
//		System.out.println(productListAll);
		return "checker/product/list";
	}
	
	// 1-1. 상품 조건 조회
	@RequestMapping(value = "/product/search")
	public String productSearch() {
		return "checker/product/search";
	}
	
	// 2. 상품 상세
	@RequestMapping(value = "/product/detail")
	public String productDetail(@RequestParam("product_code") int product_code, Model model) {
		ProductDto productDto = productServiceImpl.selectProductDetail(product_code);
		model.addAttribute("ProductDto", productDto);
		
		List<StockDetailDto> stockListByStore = productServiceImpl.selectStockListByStore(product_code);
		model.addAttribute("list", stockListByStore);
		
		System.out.println(stockListByStore);
		
		return "checker/product/detail";
	}

	// 3-1. 장바구니  추가 
	@RequestMapping(value = "/product/addCart")
	public String productAddCart(@RequestParam HashMap<String, String> paramMap) {
		//System.out.println("Controller"+paramMap);
		productServiceImpl.addCart(paramMap);
		return "redirect:/product/cartlist";
	}
	
	// 3-2. 장바구니 확인
	@RequestMapping(value = "/product/cartlist")
	public String selectCartList(Model model) {
		List<CartDto> selectCartList = productServiceImpl.selectCartList();
		model.addAttribute("cartlist", selectCartList);
		return "checker/product/cart";
	}
	
	// 3-3. 장바구니 삭제
	@RequestMapping(value = "/product/cartDelete")
	public String cartDelete(@RequestParam("product_code") int product_code) {
		//System.out.println("Controller"+product_code);
		productServiceImpl.cartDelete(product_code);
		return "redirect:/product/cartlist";
	}
	
	// 4. 재고 전체 조회 (admin)
	@RequestMapping(value = "/product/stockList")
	public String stockList(Model model) {
		List<ProductDto> productListAll = productServiceImpl.selectProductListAll();
		model.addAttribute("list", productListAll);
		return "checker/product/stockList";
	}
	
	// 4-1. 재고 조건 조회 (admin)
	@RequestMapping(value = "/product/stockSearch")
	public ModelAndView stockSearch(@RequestParam HashMap<String, String> paramMap, Model model) {
		System.out.println("Controller paramMap=" + paramMap);

		List<ProductDto> productList = productServiceImpl.searchProductList(paramMap);
		for (int i = 0; i < productList.size(); i++) {
			ProductDto dto = (ProductDto) productList.get(i);
			dto.toString();
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", productList);
		mv.setViewName("checker/product/stockList");

		return mv;
	}
	
	// 4-2. 재고 상세 조회 (admin)
	@RequestMapping(value = "/product/stockDetail")
	public String stockDetail(@RequestParam("product_code") int product_code, Model model) {
		ProductDto productDto = productServiceImpl.selectProductDetail(product_code);
		model.addAttribute("ProductDto", productDto);
		return "checker/product/stockDetail";
	}
	
	// 4-3-1. 재고 추가 폼 (admin)
	@RequestMapping(value = "/product/stockAddForm")
	public String stockAddForm() {
		return "checker/product/stockAddForm";
	}
	
	// 4-3-2. 재고 추가 (admin)
	@RequestMapping(value = "/product/stockAdd")
	public String stockAdd(@RequestParam HashMap<String, String> paramMap) {
		productServiceImpl.insertProductStock(paramMap);
		return "redirect:/product/stockList";
	}
	
	// 4-4-1. 재고 수정 폼 (admin)
	@RequestMapping(value = "/product/stockUpdateForm")
	public String stockUpdateForm(@RequestParam("product_code") int product_code, Model model) {
		ProductDto productDto = productServiceImpl.selectProductDetail(product_code);
		model.addAttribute("ProductDto", productDto);
		return "checker/product/stockUpdateForm";
	}
		
	// 4-4-2. 재고 수정 (admin)
	@RequestMapping(value = "/product/stockUpdate")
	public String stockUpdate(@RequestParam HashMap<String, String> paramMap, RedirectAttributes redirectAttributes) {
		productServiceImpl.updateProductStock(paramMap);
		redirectAttributes.addAttribute("product_code", paramMap.get("product_code"));
//		System.out.println("here~~~~"+paramMap);
//		System.out.println("here~~~~"+paramMap.get("product_code"));
//		System.out.println("here~~~~"+paramMap.get("product_size"));
		return "redirect:/product/stockList";
	}
	
	// 4-5. 재고 삭제 (admin)
	@RequestMapping(value = "/product/stockDelete")
	public String stockDelete(@RequestParam("product_code") int product_code) {
		productServiceImpl.deleteProductStock(product_code);
		return "redirect:/product/stockList";
	}

	
	// 5. 결제
	@RequestMapping(value = "/product/pay")
	public String productPay() {
		return "checker/product/pay";
	}
	
	
}