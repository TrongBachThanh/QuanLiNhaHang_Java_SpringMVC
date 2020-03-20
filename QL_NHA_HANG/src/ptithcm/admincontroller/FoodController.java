package ptithcm.admincontroller;

import java.util.List;

import javax.transaction.Transactional;

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

import ptithcm.entity.Food;
import ptithcm.entity.FoodGroup;

@Transactional
@Controller
@RequestMapping("/admin/restaurant/")
public class FoodController {

	@Autowired
	SessionFactory factory;

	@RequestMapping("menu")
	public String menu(ModelMap model) {

		Session session = factory.getCurrentSession();
		String hql = "From Food";
		Query query = session.createQuery(hql);

		List<Food> list = query.list();

		model.addAttribute("foods", list);

		return "admin/food/menu";
	}

	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("food", new Food());
		model.addAttribute("type", "insert");
		model.addAttribute("messageinsert", "Thêm mới món ăn");
		return "admin/food/insert";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert_food(ModelMap model, @ModelAttribute("food") Food food, BindingResult errors) {
		model.addAttribute("type", "insert");
		model.addAttribute("messageinsert", "ThÃªm má»›i mÃ³n Äƒn");
		if(food.getvName().trim().length()== 0) {
			errors.rejectValue("vName", "food", "Vui lÃ²ng nháº­p tÃªn mÃ³n Äƒn!");
			return "admin/food/insert";
		}
		if(food.geteName().trim().length()== 0) {
			errors.rejectValue("eName", "food", "Vui lÃ²ng nháº­p tÃªn mÃ³n Äƒn!");
			return "admin/food/insert";
		}
		if(food.getCost() == 0) {
			errors.rejectValue("cost", "food", "Vui lÃ²ng nháº­p giÃ¡ mÃ³n Äƒn!");
			return "admin/food/insert";
		}
		if(food.getImage().trim().length()== 0) {
			errors.rejectValue("image", "food", "Vui lÃ²ng nháº­p hÃ¬nh áº£nh mÃ³n Äƒn!");
			return "admin/food/insert";
		}
		
		
		
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(food);
			t.commit();
			model.addAttribute("message", "ThÃªm má»›i thÃ nh cÃ´ng!");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("message", "ThÃªm má»›i tháº¥t báº¡i!");
		} finally {
			session.close();
		}
		
		Session session2 = factory.getCurrentSession();
		String hql1 = "FROM Food";
		Query query1 = session2.createQuery(hql1);
		List<Food> list1 = query1.list();
		model.addAttribute("foods", list1);
	
		return "admin/food/menu";
	}

	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Food WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<Food> list = query.list();
		model.addAttribute("food", list.get(0));

		model.addAttribute("messageinsert", "Cập nhật món ăn");
		model.addAttribute("type", "update");
		model.addAttribute("kt", 1);
		return "admin/food/insert";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update_food(ModelMap model, @ModelAttribute("food") Food food) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.update(food);
			t.commit();
			model.addAttribute("message", "Cáº­p nháº­t thÃ nh cÃ´ng!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Cáº­p nháº­t tháº¥t báº¡i!");
		} finally {
			session.close();
		}

		Session session1 = factory.getCurrentSession();
		String hql = "From Food";
		Query query = session1.createQuery(hql);

		List<Food> list = query.list();

		model.addAttribute("foods", list);

		return "admin/food/menu";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Food WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<Food> list = query.list();
		Food food = list.get(0);

		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			session1.delete(food);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session1.close();
		}

		Session session2 = factory.getCurrentSession();
		String hql1 = "FROM Food";
		Query query1 = session2.createQuery(hql1);
		List<Food> list1 = query1.list();
		model.addAttribute("foods", list1);
		model.addAttribute("message", "Xoa thanh cÃ´ng!");
		return "admin/food/menu";
	}

	@ModelAttribute("foodgroup")
	public List<FoodGroup> getFoodGroup() {
		Session session = factory.getCurrentSession();
		String hql = "FROM FoodGroup";
		Query query = session.createQuery(hql);
		List<FoodGroup> list = query.list();
		return list;
	}
}
