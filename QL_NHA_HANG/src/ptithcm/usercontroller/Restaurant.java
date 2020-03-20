package ptithcm.usercontroller;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.bean.Mailer;
import ptithcm.entity.Branch;
import ptithcm.entity.Food;
import ptithcm.entity.FoodGroup;
import ptithcm.entity.Member;
import ptithcm.entity.New;
import ptithcm.entity.TableBook;

@Transactional
@Controller
@RequestMapping("/restaurant/")

public class Restaurant {
	@Autowired
	SessionFactory factory;

	@Autowired
	Mailer mailer;

	// HOME

	@RequestMapping("home")
	public String home() {
		return "user/home";
	}

	// END HOME

	// INTRODUCTION

	@RequestMapping("introduction")
	public String introduction() {

		return "user/introduction";
	}
	// END INTRODUCTION

	// ===========================================NEWS================================================================
	@RequestMapping("news")
	public String news(ModelMap model) {

		Session session = factory.getCurrentSession();
		String hql = "From New Where Type=1";
//		String hql = "From New ORDER BY year(Date) DESC,month(Date) DESC";

//		String hql = "From New";

		Query query = session.createQuery(hql);

		/*
		 * query.setFirstResult(0); query.setMaxResults(5);
		 */

		List<New> list = query.list();
		model.addAttribute("news", list);

		/*
		 * for (int i = 0; i < list.size(); i++) {
		 * System.out.println(list.get(i).getTitle() + "     " + list.get(i).getDate() +
		 * list.get(i).getContent());
		 * 
		 * System.out.println("báº¡ch thanh trá»�ng");
		 * 
		 * }
		 */
		return "user/news";
	}

	@ModelAttribute("new_update")
	public List<New> new_update() {

		Session session = factory.getCurrentSession();
//		String hql = "From New Where Type=1";
		String hql = "From New ORDER BY year(Date) DESC,month(Date) DESC";

//		String hql = "From New";

		Query query = session.createQuery(hql);

		query.setFirstResult(0);

		query.setMaxResults(2);

		List<New> list = query.list();

		return list;

	}
	// ===============================================SALE======================================================

	// ===============================================END
	// SALE======================================================

	// ===============================================END
	// NEWS======================================================

	// ===========================================NEW
	// DETAIL================================================================
	@RequestMapping(value = "news/{id}", method = RequestMethod.GET)
	public String showMenu(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM New WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);

		List<New> list = query.list();
		model.addAttribute("detail", list.get(0));

		System.out.println(list.get(0).getId() + list.get(0).getTitle());

		return "user/new";
	}
	// ===========================================END NEW
	// DETAIL================================================================
	// ===============================================MENU======================================================

	@RequestMapping("menu")
	public String menu(ModelMap model) {

		Session session = factory.getCurrentSession();
		String hql = "From Food";
		Query query = session.createQuery(hql);

		List<Food> list = query.list();

		model.addAttribute("foods", list);

		return "user/menu";
	}

	@ModelAttribute("foodGroups")
	public List<FoodGroup> getFoodGroup() {
		Session session = factory.getCurrentSession();
		String hql = "FROM FoodGroup";
		Query query = session.createQuery(hql);
		List<FoodGroup> list = query.list();
		return list;
	}

	// ===============================================END
	// MENU======================================================

	// ===============================================PROMOTIONS======================================================

	@RequestMapping("promotions")
	public String promotions(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "From New Where Type=2";
//			String hql = "From New ORDER BY year(Date) DESC,month(Date) DESC";

//			String hql = "From New";

		Query query = session.createQuery(hql);

		/*
		 * query.setFirstResult(0); query.setMaxResults(5);
		 */

		List<New> list = query.list();
		model.addAttribute("news", list);

		
		return "user/promotions";
	}

	// ===============================================END
	// PROMOTIONS======================================================

	// ===============================================TABLE======================================================
	@RequestMapping("reservetable")
	public String reserve_table(ModelMap model) {

		System.out.println("Lam lai");

		TableBook tablebook = new TableBook();
		tablebook.setDate(new Date());

		model.addAttribute("tablebook", tablebook);
		return "user/reservetable";
	}

	@ModelAttribute("branch")
	public List<Branch> getBranch() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Branch";
		Query query = session.createQuery(hql);
		List<Branch> list = query.list();
		return list;
	}

	@RequestMapping(value = "reserve_table", method = RequestMethod.POST)
	public String reservetable(ModelMap model, @ModelAttribute("tablebook") TableBook tablebook, BindingResult errors,
			@RequestParam("datetime_local") String date) {
		
		
		
		
		int nam = Integer.parseInt(date.substring(0, 4));
		int thang = Integer.parseInt(date.substring(5, 7));
		int ngay = Integer.parseInt(date.substring(8, 10));
		int gio = Integer.parseInt(date.substring(11, 13));
		int phut = Integer.parseInt(date.substring(14, 16));
		System.out.println(nam + "-" + thang + "-" + ngay + " " + gio + ":" + phut);

		// 3920-01-01 01:01:00.000
		System.out.println("a" + date + "b");

		@SuppressWarnings("deprecation")
		Date ngayDatBan = new Date(nam - 1900, thang, ngay, gio, phut);

		tablebook.setDate(ngayDatBan);

		System.out.println(tablebook.getDate());

		if (tablebook.getName().trim().length() == 0) {
			errors.rejectValue("name", "tablebook", "Vui lòng nhập họ và tên!");
			return "user/reservetable";
		}

		if (tablebook.getPhone().trim().length() == 0) {
			errors.rejectValue("phone", "tablebook", "Vui lòng nhập số DT!");
			return "user/reservetable";
		}

		if (tablebook.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "tablebook", "Vui lòng nhập email!");
			return "user/reservetable";
		}

		if (tablebook.getDate() == null) {
			errors.rejectValue("date", "tablebook", "Vui lòng nhập ngày!");
			return "user/reservetable";
		}

		if (tablebook.getNumber() == 0) {
			errors.rejectValue("number", "tablebook", "Vui lòng nhập số người!");
			return "user/reservetable";
		}

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		tablebook.setState(false);
		
		
		
		/*
		 * String from = "trong2712bach@gmail.com"; String to = tablebook.getEmail();
		 * String title = "Khoái Restaurant-Đặt bàn thành công!"; String body =
		 * "Họ và tên: " + tablebook.getName() +"\n" + "Số DT: " +
		 * tablebook.getNumber();
		 * 
		 * mailer.send(from, to, title, body);
		 */
			
		
		

		// tablebook.setDate(date);

		try {
			session.save(tablebook);
			t.commit();
			model.addAttribute("message", "Đặt bàn thành công!");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("message", "Đặt bàn thất bại!");
		} finally {
			session.close();
		}
		tablebook = new TableBook();
		model.addAttribute("tablebook", tablebook);

		return "user/reservetable";
	}

	// ===============================================END
	// TABLE======================================================

	// ===============================================REGISTER======================================================

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(ModelMap model) {
		model.addAttribute("member", new Member());
		return "user/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register_(ModelMap model, @ModelAttribute("member") Member member, BindingResult errors) {

		if (member.getName().trim().length() == 0) {
			errors.rejectValue("name", "member", "Vui lòng nhập họ và tên!");
			return "user/register";
		}

		if (member.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "member", "Vui lòng nhập email!");
			return "user/register";
		}

		if (member.getCellphone().trim().length() == 0) {
			errors.rejectValue("cellphone", "member", "Vui lòng nhập số DT di động!");
			return "user/register";
		}

		if (member.getBirthday() == null) {
			errors.rejectValue("birthday", "member", "Vui lòng nhập ngày sinh!");
			return "user/register";
		}

		if (member.getAddress().trim().length() == 0) {
			errors.rejectValue("address", "member", "Vui lòng nhập địa chỉ!");
			return "user/register";
		}

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(member);
			t.commit();
			model.addAttribute("message", "Them moi thanh cong");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("message", "Them moi that bai");
		} finally {
			session.close();
		}

		System.out.println(member.getName() + "    " + member.getBirthday());

		return "user/register";
	}

	// ===============================================END
	// REGISTER======================================================

}
