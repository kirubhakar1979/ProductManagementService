package com.productservice.servlet;

import java.io.IOException;

import com.productservice.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductManagementServlet
 */
@WebServlet({ "/product"})
public class ProductManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ProductManagementServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Product product = new Product();

		product.setProductId(request.getParameter("productId"));
		product.setProductName(request.getParameter("productName"));
		product.setProductType(request.getParameter("productType"));
		product.setProductUnitPrice(Double.parseDouble(request.getParameter("productUnitPrice")));
		
		request.setAttribute("product", product);
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
