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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Food;
import ptithcm.entity.New;
import ptithcm.entity.TableBook;

@Transactional
@Controller
@RequestMapping("/admin/restaurant/")
public class TableBookController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("tablebook/index")
	public String menu(ModelMap model) {

		Session session = factory.getCurrentSession();
		String hql = "From TableBook";
		Query query = session.createQuery(hql);

		List<TableBook> list = query.list();

		model.addAttribute("tablebooks", list);


		return "admin/tablebook/index_tablebook";
	}
	
	@RequestMapping(value = "tablebook/insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		
		model.addAttribute("table", new TableBook());
		model.addAttribute("type", "insert");
		return "admin/tablebook/insert_tablebook";
	}
	
	@RequestMapping(value = "tablebook/insert", method = RequestMethod.POST)
	public String insert_food(ModelMap model, @ModelAttribute("table") TableBook table) {
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(table);
			t.commit();
			model.addAttribute("message", "Them moi thanh cong");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("message", "Them moi that bai");
		} finally {
			session.close();
		}
		Session session2 = factory.getCurrentSession();
		String hql2 = "From TableBook";
		Query query2 = session2.createQuery(hql2);

		List<TableBook> list2 = query2.list();

		model.addAttribute("tablebooks", list2);


		return "admin/tablebook/index_tablebook";
	}
	
	@RequestMapping(value = "tablebook/update/{id}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("id") String id) {
		
		Session session = factory.getCurrentSession();
		String hql = "FROM TableBook WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<TableBook> list = query.list();
		
		model.addAttribute("table", list.get(0));
		
		model.addAttribute("type", "update");
		  	
		return "admin/tablebook/insert_tablebook";
	}
	
	@RequestMapping(value = "tablebook/update", method = RequestMethod.POST)
	public String update_food(ModelMap model, @ModelAttribute("table") TableBook table) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.update(table);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công!");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại!");
		} finally {
			session.close();
		}
		Session session2 = factory.getCurrentSession();
		String hql2 = "From TableBook";
		Query query2 = session2.createQuery(hql2);

		List<TableBook> list2 = query2.list();

		model.addAttribute("tablebooks", list2);


		return "admin/tablebook/index_tablebook";
	}
	
	@RequestMapping(value = "tablebook/delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TableBook WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<TableBook> list = query.list();
		TableBook table = list.get(0);

		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		try {
			session1.delete(table);
			t.commit();
			model.addAttribute("message", "Xóa thành công!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Xóa thất bại!");
		} finally {
			session1.close();
		}

		Session session2 = factory.getCurrentSession();
		String hql2 = "From TableBook";
		Query query2 = session2.createQuery(hql2);

		List<TableBook> list2 = query2.list();

		model.addAttribute("tablebooks", list2);


		return "admin/tablebook/index_tablebook";
	}

	
}
