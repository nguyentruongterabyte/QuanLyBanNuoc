package poly.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import poly.entity.CustomerEntity;
import poly.entity.DiscountEntity;
import poly.entity.InvoiceDetailEntity;
import poly.entity.InvoiceEntity;
import poly.entity.ProductEntity;
import poly.entity.StaffEntity;

@Transactional
@Controller
@RequestMapping("/bill/")
public class BillController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("pay-bill")
	public String showBillForm() {
		return "bill/billPay";
	}

	// Lấy danh sách khách hàng
	@ModelAttribute("customers") 
	public List<CustomerEntity> getCustomes() {
		Session session = factory.getCurrentSession();
		String hql = "FROM CustomerEntity";
		Query query = session.createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<CustomerEntity> customers = query.list();
		
		return customers;
	}
	
	// Lấy những nhân viên thu ngân
	@ModelAttribute("cashiers")
	public List<StaffEntity> getCashiers(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "SELECT s FROM StaffEntity s WHERE s.department.id = 'BP03'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<StaffEntity> cashiers = (List<StaffEntity>) query.list();
		return cashiers;
	}

//	//Lấy mã hóa đơn tự động
//	@ModelAttribute("invoiceId")
//	public String getNewInvoiceId() {
//	}

	@RequestMapping(value = "create-bill", method = RequestMethod.GET)
	public String createBill(ModelMap model) {

		Session session = factory.getCurrentSession();
		String hqlCount = "SELECT COUNT(*) FROM InvoiceEntity";
		Query query = session.createQuery(hqlCount);
		Long count = (Long) query.uniqueResult();
		String invoiceId;
		if (count == 0) {
			invoiceId = "HD00000001";
		} else {
			// Lấy hóa đơn lớn nhất hiện có trong bảng InvoiceEntity
			String hqlMax = "SELECT MAX(invoice.id)" + " FROM InvoiceEntity invoice";
			Query queryMax = session.createQuery(hqlMax);
			String maxId = (String) queryMax.uniqueResult();

			// Tạo mã hóa đơn mới bằng cách tăng số thứ tự ở cuối chuỗi mã hóa đơn lên 1
			String indexStr = maxId.substring(2);
			indexStr = indexStr.trim();
			int index = Integer.parseInt(indexStr) + 1;
			invoiceId = "HD" + String.format("%08d", index);
		}

		model.addAttribute("invoiceId", invoiceId);
		model.addAttribute("cashiers");
		model.addAttribute("invoice", new InvoiceEntity());
		return "bill/createBillOrder";
	}

	@ModelAttribute("products")
	public List<ProductEntity> getProducts() {
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductEntity";
		Query query = session.createQuery(hql);

		@SuppressWarnings("unchecked")
		List<ProductEntity> list = query.list();

		return list;
	}

	@RequestMapping(value = "create-bill", method = RequestMethod.POST)
	public String createBillDetail(ModelMap model, @RequestParam("invoiceId") String invoiceId,
			@RequestParam("invoiceDate") @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm") LocalDateTime invoiceDate,
			@RequestParam("staffId") String staffId) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		InvoiceEntity newInvoice = new InvoiceEntity();
		StaffEntity staff = (StaffEntity) session.get(StaffEntity.class, staffId);

		try {
			newInvoice.setId(invoiceId);
			newInvoice.setStaff(staff);
//			newInvoice.setInvoiceDate(Timestamp.valueOf(invoiceDate));
			session.save(newInvoice);
			t.commit();

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			t.rollback();
		} finally {
			session.close();
		}
		model.addAttribute("discounts");
		model.addAttribute("invoiceId", invoiceId);
		model.addAttribute("products");
		return "bill/createBillDetail";
	}

	@RequestMapping(value = "/create-bill-detail")
	public String showBillDetail(ModelMap model, 
			@RequestParam("invoiceId") String invoiceId) {
		Session session = factory.getCurrentSession();
		// hql này lấy những chi tiết hóa đơn có 
		// id của hóa đơn trùng với invoiceId
		// để đổ về giỏ hàng
		String hqlInvoicesDetail = "SELECT d "
				+ "FROM InvoiceDetailEntity d "
				+ "WHERE d.id.invoice.id = :invoiceId";
		Query query = session.createQuery(hqlInvoicesDetail);
		query.setParameter("invoiceId", invoiceId);
		
		@SuppressWarnings("unchecked")
		List<InvoiceDetailEntity> invoicesDetail = query.list();
		model.addAttribute("invoiceDetails", invoicesDetail);
		model.addAttribute("invoiceId");
		model.addAttribute("discounts");
		model.addAttribute("products");
		model.addAttribute("customers");
		return "bill/createBillDetail";

	}

	@ModelAttribute("discounts")
	public List<DiscountEntity> getDiscount() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("FROM DiscountEntity");

		@SuppressWarnings("unchecked")
		List<DiscountEntity> list = query.list();

		return list;
	}

	@ModelAttribute("invoiceId")
	public String getCurrentInvoiceId() {
		Session session = factory.getCurrentSession();
		String hqlMax = "SELECT MAX(invoice.id)" + " FROM InvoiceEntity invoice";
		Query query = session.createQuery(hqlMax);
		String currentInvoiceId = (String) query.uniqueResult();
		return currentInvoiceId;
	}

	@RequestMapping(value = "/add-product", method = RequestMethod.POST)
	public String addProductToInvoice(ModelMap model, 
			@RequestParam("productId") String productId,
			@RequestParam("invoiceId") String invoiceId, 
			@RequestParam("productQuantity") int productQuantity) {
//		System.out.println((productId == "") + ", " + invoiceId + ", " + productQuantity);
		// Lần lượt lấy ba giá trị gồm productId, invoiceId và quantity về để xử lý phiếu chi tiết hóa đơn
		// Chỉ xử lý khi id của product không bị trống 
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (productId != "") {
			try {
				// Kiểm tra xem đã tồn tại sản phẩm đó ở trong hóa đơn hay chưa
				String hql = "FROM InvoiceDetailEntity "
						+ "WHERE id.invoice.id = :invoiceId "
						+ "AND id.invoiceProduct.id = :productId";
				Query query = session.createQuery(hql);
				query.setParameter("invoiceId", invoiceId);
				query.setParameter("productId", productId);

				// Nếu có thì trả về list với số lượng bản ghi của chi tiết hóa đơn
				// Ngược lại thì list trống
				@SuppressWarnings("unchecked")
				List<InvoiceDetailEntity> listCheck = query.list();
				
				// Nếu sản phẩm chưa có trong chi tiết hóa đơn thì
				// Thêm mới sản phẩm và Invoice vào chi tiết
				if (listCheck.isEmpty()) {
					// Khởi tạo sản phẩm và hóa đơn từ khóa chính của chúng
					ProductEntity product = (ProductEntity) session.get(ProductEntity.class, productId);
					InvoiceEntity invoice = (InvoiceEntity) session.get(InvoiceEntity.class, invoiceId);
					
					// Khai báo một biến để lưu chi tiết hóa đơn gồm:
					// - invoice
					// - product
					// - quantity
					
					InvoiceDetailEntity invoiceDetail = new InvoiceDetailEntity();
					invoiceDetail.setInvoiceEntity(invoice);
					invoiceDetail.setProductEntity(product);
					invoiceDetail.setQuantity(productQuantity);
					
					// Lưu nó vào phiên làm việc
					session.save(invoiceDetail);
					t.commit();
				} else {
					// Trường hợp id của product đã tồn tại trong chi tiết hóa đơn
					// thì nếu nhấn nút thêm thì số lượng trong chi tiết hóa đơn 
					// sẽ được cộng dồn
					try {
						// hql này lấy số lượng từ chi tiết hóa đơn theo productId 
						// và invoiceId 
						String hqlQuantity = "SELECT d.quantity "
								+ "FROM InvoiceDetailEntity d "
								+ "WHERE d.id.invoice.id = :invoiceId "
								+ "AND d.id.invoiceProduct.id = :productId";
						
						// Tạo query vào phiên làm việc
						Query queryQuantity = session.createQuery(hqlQuantity);
						
						// Cài đặt thuộc tính :invoiceId và :productId
						// cho query
						queryQuantity.setParameter("productId", productId);
						queryQuantity.setParameter("invoiceId", invoiceId);
						
						// Lấy số lượng của sản phẩm có trong invoice
						int quantity = (int) queryQuantity.uniqueResult();
						// Số lượng sản phẩm sẽ được cộng dồn với số lương
						// vừa lấy từ view
						quantity += productQuantity;
						
						// hqlSum để truy vấn tới chi tiết hóa đơn có
						// product id và invoice id tương ứng 
						// để sửa số lượng của nó
						String 	hqlSum = "UPDATE InvoiceDetailEntity d "
								+ "SET d.quantity = :quantity "
								+ "WHERE "
								+ "d.id.invoice.id = :invoiceId AND d.id.invoiceProduct.id = :productId";
						Query querySum = session.createQuery(hqlSum);
						querySum.setParameter("quantity", quantity);
						querySum.setParameter("productId", productId);
						querySum.setParameter("invoiceId", invoiceId);
						
						querySum.executeUpdate();
						t.commit();
					} catch (Exception e) {
						// TODO: handle exception
						System.out.println(e);
						t.rollback();
					}
				}
			} catch (Exception e) {
				// TODO: handle exception
				// Trường hợp thêm không thành công thì không thực hiện gì cả 
				// Và trả về lỗi
				t.rollback();
			} finally {
				session.close();
			}
		} 		
		return "redirect:/bill/create-bill-detail.htm";
	}
}
