package ptithcm.admincontroller;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Food;
import ptithcm.entity.FoodGroup;

@Transactional
@Controller
@RequestMapping("/admin/restaurant/")
public class FoodGroupController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("foodgroup/index")
	public String index_foodgroup(ModelMap model) {

		Session session = factory.getCurrentSession();
		String hql = "From FoodGroup";
		Query query = session.createQuery(hql);

		List<FoodGroup> list = query.list();

		model.addAttribute("foodgroup", list);

		return "admin/foodgroup/index_foodgroup";
	}

	@RequestMapping(value = "foodgroup/insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("foodgroup", new FoodGroup());
		model.addAttribute("type", "insert");
		model.addAttribute("messageinsert", "Thêm mới loại món ăn");
		return "admin/foodgroup/insert_foodgroup";
	}

	@RequestMapping(value = "foodgroup/insert", method = RequestMethod.POST)
	public String insert_food(ModelMap model, @ModelAttribute("foodgroup") FoodGroup foodgroup) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(foodgroup);
			t.commit();
			model.addAttribute("message", "Them moi thanh cong");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("message", "Them moi that bai");
		} finally {
			session.close();
		}

		Session session1 = factory.getCurrentSession();
		String hql1 = "From FoodGroup";
		Query query1 = session1.createQuery(hql1);

		List<FoodGroup> list1 = query1.list();

		model.addAttribute("foodgroup", list1);

		return "admin/foodgroup/index_foodgroup";
	}

	@RequestMapping(value = "foodgroup/update/{id}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM FoodGroup WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<FoodGroup> list = query.list();
		model.addAttribute("foodgroup", list.get(0));

		model.addAttribute("messageinsert", "Cập nhật món ăn");
		model.addAttribute("type", "update");
		model.addAttribute("kt", 1);
		return "admin/foodgroup/insert_foodgroup";
	}

	@RequestMapping(value = "foodgroup/update", method = RequestMethod.POST)
	public String update_food(ModelMap model, @ModelAttribute("foodgroup") FoodGroup foodgroup) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.update(foodgroup);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại!");
		} finally {
			session.close();
		}

		Session session1 = factory.getCurrentSession();
		String hql = "From FoodGroup";
		Query query = session1.createQuery(hql);

		List<Food> list = query.list();

		model.addAttribute("foodgroup", list);

		return "admin/foodgroup/index_foodgroup";
	}

	@SuppressWarnings("unlikely-arg-type")
	@RequestMapping(value = "foodgroup/delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") String id) {

		Session session = factory.getCurrentSession();

		String hql = "FROM FoodGroup WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<FoodGroup> list = query.list();
		FoodGroup foodgroup = list.get(0);

		System.out.println(foodgroup.getFoods());

		if (foodgroup.getFoods() == null) {
			
			
			
			//return "admin/foodgroup/index_foodgroup";
		}
		Collection<Food> foods = 	foodgroup.getFoods();
		if(foods.size()==0) {
			int id1 = Integer.parseInt(id);
			FoodGroup persistentInstance = (FoodGroup) session.load(FoodGroup.class, id1);
			if (persistentInstance != null) {
				session.delete(persistentInstance);
				System.out.println("Hello World" + persistentInstance.geteName());
			}
		}

		/*
		 * System.out.println(foodgroup.geteName() + " " + foodgroup.getId());
		 * 
		 * Session session1 = factory.openSession(); Transaction t =
		 * session1.beginTransaction(); try { session1.delete(foodgroup); t.commit(); }
		 * catch (Exception e) { t.rollback(); model.addAttribute("message",
		 * "Cập nhật thất bại!"); } finally { session1.close(); }
		 */

		

		Session session2 = factory.getCurrentSession();
		String hql2 = "From FoodGroup";
		Query query2 = session2.createQuery(hql2);

		List<FoodGroup> list2 = query2.list();

		model.addAttribute("foodgroup", list2);

		return "admin/foodgroup/index_foodgroup";

	}

}
