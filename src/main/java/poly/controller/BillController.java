package poly.controller;

import java.sql.Timestamp;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import poly.bean.InvoiceDetail;
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
	
	//Lấy những nhân viên thu ngân
	@ModelAttribute("cashiers")
	public List<StaffEntity> getCashiers(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "SELECT s FROM StaffEntity s WHERE s.department.id = 'BP03'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<StaffEntity> cashiers = (List<StaffEntity>) query.list();
		return cashiers;
	}	
	
	//Lấy mã hóa đơn tự động
	@ModelAttribute("invoiceId")
	public String getInvoiceId(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hqlCount = "SELECT COUNT(*) FROM InvoiceEntity";
		Query query = session.createQuery(hqlCount);
		Long count = (Long) query.uniqueResult();
		String invoiceId;
		if (count == 0) {
			invoiceId = "HD00000001";
		} else {
			//Lấy hóa đơn lớn nhất hiện có trong bảng InvoiceEntity
			String hqlMax = "SELECT MAX(invoice.id)"
					+ " FROM InvoiceEntity invoice";
			Query queryMax = session.createQuery(hqlMax);
			String maxId = (String) queryMax.uniqueResult();
			
			//Tạo mã hóa đơn mới bằng cách tăng số thứ tự ở cuối chuỗi mã hóa đơn lên 1
			String indexStr = maxId.substring(2);
			indexStr = indexStr.trim();
			int index = Integer.parseInt(indexStr) + 1;
			invoiceId = "HD" + String.format("%08d", index);
		}
		return invoiceId;
	}
	
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
			//Lấy hóa đơn lớn nhất hiện có trong bảng InvoiceEntity
			String hqlMax = "SELECT MAX(invoice.id)"
					+ " FROM InvoiceEntity invoice";
			Query queryMax = session.createQuery(hqlMax);
			String maxId = (String) queryMax.uniqueResult();
			
			//Tạo mã hóa đơn mới bằng cách tăng số thứ tự ở cuối chuỗi mã hóa đơn lên 1
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
	public String createBillDetail(ModelMap model,
			@RequestParam("invoiceId") String invoiceId,
			@RequestParam("invoiceDate") @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm") LocalDateTime invoiceDate,
			@RequestParam("staffId") String staffId) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		InvoiceEntity newInvoice = new InvoiceEntity();
		StaffEntity staff = (StaffEntity) session.get(StaffEntity.class, staffId);
		
		try {
			newInvoice.setId(invoiceId);
			newInvoice.setStaff(staff);
			newInvoice.setInvoiceDate(Timestamp.valueOf(invoiceDate));
			session.save(newInvoice);
			t.commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			t.rollback();
		} finally {
			session.close();
		}

		model.addAttribute("invoiceId", invoiceId);
		model.addAttribute("products");
		return "bill/createBillDetail";
	}
	
	@RequestMapping(value = "/create-bill-detail", method = RequestMethod.GET) 
	public String showBillDetail(ModelMap model) {
		model.addAttribute("invoiceId");
		return "bill/createBillDetail";
		
	}
	
	@ModelAttribute("invoiceId")
	public String getCurrentInvoiceId() {
		Session session = factory.getCurrentSession();
		String hqlMax = "SELECT MAX(invoice.id)"
				+ " FROM InvoiceEntity invoice";
		Query query = session.createQuery(hqlMax);
		String currentInvoiceId = (String) query.uniqueResult();
		return currentInvoiceId;
	}
	
	@RequestMapping(value = "/create-bill-detail", method = RequestMethod.POST)
	public String addProductToInvoice(ModelMap model, 
			@RequestParam("productId") String productId, 
			@RequestParam("invoiceId") String invoiceId,
			@RequestParam("productQuantity") int productQuantity
) {
		System.out.print(productId);
		System.out.print(invoiceId);
		System.out.print(productQuantity);
	
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		
		try {
			ProductEntity product = (ProductEntity) session.get(ProductEntity.class, productId);
			InvoiceEntity invoice = (InvoiceEntity) session.get(InvoiceEntity.class, invoiceId);
			InvoiceDetailEntity invoiceDetail = new InvoiceDetailEntity();
			invoiceDetail.setInvoiceEntity(invoice);
			invoiceDetail.setProductEntity(product);
			session.save(invoiceDetail);
			
			t.commit();
			System.out.print("Thanh Cong!");

		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			System.out.print(e);
		} finally {
			session.close();
		}
		model.addAttribute("invoiceId", invoiceId);
		return "bill/createBillDetail";
	}
	
}
