package poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bill/")
public class BillController {
	@RequestMapping("pay-bill")
	public String showBillForm() {
		return "bill/billpay";
	}
}
