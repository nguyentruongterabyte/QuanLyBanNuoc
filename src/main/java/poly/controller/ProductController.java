package poly.controller;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import poly.entity.BrandEntity;
import poly.entity.ProductEntity;

@Transactional
@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	SessionFactory factory;

	// Trả về model giá trị của các product
	@ModelAttribute(value = "products")
	public List<ProductEntity> getProducts() {
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductEntity";
		Query query = session.createQuery(hql);

		@SuppressWarnings("unchecked")
		List<ProductEntity> list = query.list();

		return list;
	}

	// Trả về model giá trị của các thương hiệu
	@ModelAttribute(value = "brands")
	public List<BrandEntity> getBrands() {
		Session session = factory.getCurrentSession();

		String hql = "FROM BrandEntity";
		Query query = session.createQuery(hql);

		@SuppressWarnings("unchecked")
		List<BrandEntity> brandList = query.list();

		return brandList;

	}
	
	@RequestMapping("list")
	public String showListProducts(@RequestParam(value = "id", required = false) String id, ModelMap model) {

		Session session = factory.getCurrentSession();

		if (id != null) {
			ProductEntity product = (ProductEntity) session.get(ProductEntity.class, id);
			model.addAttribute("product", product);
		}
		return "product/productList";
	}

	@RequestMapping(value = "list", params = "delete")
	public String deleteProduct(@RequestParam("id") String id, ModelMap model) {
		// Xử lý xóa sản phẩm với id được truyền vào
		if (id != null) {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();

			try {
				String hql = "DELETE FROM ProductEntity WHERE id = :id";
				Query query = session.createQuery(hql);
				query.setParameter("id", id);
				query.executeUpdate();
				t.commit();
				ProductEntity product = (ProductEntity) session.get(ProductEntity.class, id);
				model.addAttribute("product", product);
				model.addAttribute("message", "Xóa dữ liệu thành công!");
			} catch (Exception e) {
				// TODO: handle exception
				t.rollback();
				model.addAttribute("message", "Xóa thất bại!");
			} finally {
				session.close();
			}

		}
		return "product/productList"; // Chuyển hướng về trang danh sách sản phẩm
	}

	@RequestMapping(value = "list", params = "lnkEdit")
	public String editProductInfo(@RequestParam(value = "id", required = false) String id, ModelMap model) {
		Session session = factory.getCurrentSession();

		ProductEntity product = (ProductEntity) session.get(ProductEntity.class, id);
		model.addAttribute("product", product);
		return "product/editProductDetail";
	}

	// Lưu thông tin sản phẩm khi update
	@RequestMapping(value = "save-data-update")
	public String saveDataUpdate(ModelMap model, @RequestParam(value = "id") String id,
			@RequestParam(value = "name") String name, @RequestParam(value = "brand") String brand,
			@RequestParam(value = "volume") String volume, @RequestParam(value = "barCode") String barCode,
			@RequestParam(value = "retailPrice") Double retailPrice,
			@RequestParam(value = "purchasePrice") Double purchasePrice,
			@RequestParam(value = "describe") String describe, @RequestParam(value = "photo") String photo) {

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			String hql = "UPDATE ProductEntity p "
					+ "SET "
					+ "p.name = :name, "
					+ "p.brand.id = :brand, "
					+ "p.volume = :volume, "
					+ "p.barCode = :barCode, "
					+ "p.retailPrice = :retailPrice, "
					+ "p.purchasePrice = :purchasePrice, "
					+ "p.describe = :describe, "
					+ "p.photo = :photo "
					+ "WHERE p.id = :id";
			Query query = session.createQuery(hql);
			query.setParameter("name", name);
			query.setParameter("brand", brand);
			query.setParameter("volume", volume);
			query.setParameter("barCode", barCode);
			query.setParameter("retailPrice", retailPrice);
			query.setParameter("purchasePrice", purchasePrice);
			query.setParameter("describe", describe);
			query.setParameter("id", id);
			query.setParameter("photo", photo);
			query.executeUpdate();
			t.commit();
			ProductEntity product = (ProductEntity) session.get(ProductEntity.class, id);
			model.addAttribute("product", product);
			model.addAttribute("message", "Cập nhật dữ liệu thành công!");
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message", "Lưu thất bại!");
			return "redirect:/product/list.htm?lnkEdit&id=" + id;
		} finally {
			session.close();
		}
		return "product/productList";
	}

	@RequestMapping("add-product")
	public String addProduct() {
		return "product/addProduct";
	}

	@RequestMapping("save-data-create")
	// Lưu dữ liệu sản phẩm tạo mới
	public String saveDateUpdate(ModelMap model, @RequestParam(value = "id") String id,
			@RequestParam(value = "name") String name, @RequestParam(value = "brand") String brandId,
			@RequestParam(value = "volume") String volume, @RequestParam(value = "barCode") String barCode,
			@RequestParam(value = "retailPrice") Double retailPrice,
			@RequestParam(value = "purchasePrice") Double purchasePrice,
			@RequestParam(value = "describe") String describe, @RequestParam(value = "photo") String photo) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		BrandEntity brand = (BrandEntity) session.get(BrandEntity.class, brandId);
		try {
			ProductEntity newProduct = new ProductEntity();
			newProduct.setId(id);
			newProduct.setName(name);
			newProduct.setBrand(brand);
			newProduct.setVolume(volume);
			newProduct.setBarCode(barCode);
			newProduct.setRetailPrice(retailPrice);
			newProduct.setPurchasePrice(purchasePrice);
			newProduct.setDescribe(describe);
			newProduct.setPhoto(photo);
			session.save(newProduct);
			t.commit();
//			ProductEntity product = (ProductEntity) session.get(ProductEntity.class, id);
//			model.addAttribute("product", product);
			model.addAttribute("message", "Lưu dữ liệu thành công!");
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message", "Lưu thất bại!");
			return "product/addProduct";
		} finally {
			session.close();
		}

		return "product/productList";
	}

}
