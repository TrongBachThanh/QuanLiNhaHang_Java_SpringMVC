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

@Transactional
@Controller
@RequestMapping("/admin/restaurant/")
public class NewsController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("news/index")
	public String index(ModelMap model) {
		
		Session session = factory.getCurrentSession();
		String hql = "From New";
		Query query = session.createQuery(hql);

		
		
		List<New> list = query.list();
		model.addAttribute("news", list);
		
		return "admin/news/index_news";
	}
	
	@RequestMapping(value = "news/insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		
		model.addAttribute("new", new New());
		
		model.addAttribute("insert", "insert");
		
		return "admin/news/insert_news";
	}
	
	@RequestMapping(value = "news/insert", method = RequestMethod.POST)
	public String insert_food(ModelMap model, @ModelAttribute("new") New n) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(n);
			t.commit();
			model.addAttribute("message", "Them moi thanh cong");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("message", "Them moi that bai");
		} finally {
			session.close();
		}
		Session session2 = factory.getCurrentSession();
		String hql2 = "From New";
		Query query2 = session2.createQuery(hql2);
		List<New> list2 = query2.list();
		model.addAttribute("news", list2);
		
		return "admin/news/index_news";
	}
	
	
	@RequestMapping(value = "news/update/{id}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("id") String id) {
		System.out.println(id + "abc");
		Session session = factory.getCurrentSession();
		String hql = "FROM New WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<New> list = query.list();
		
		model.addAttribute("new", list.get(0));
		
		model.addAttribute("insert", "update");
		  	
		return "admin/news/insert_news";
	}
	
	
	@RequestMapping(value = "news/update", method = RequestMethod.POST)
	public String update_food(ModelMap model, @ModelAttribute("new") New n) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.update(n);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại");
		} finally {
			session.close();
		}
		Session session2 = factory.getCurrentSession();
		String hql2 = "From New";
		Query query2 = session2.createQuery(hql2);
		List<New> list2 = query2.list();
		model.addAttribute("news", list2);
		
		return "admin/news/index_news";
	}
	
	@RequestMapping(value = "news/delete/{id}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		String hql = "From New Where id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<New> list = query.list();
		
		New first = list.get(0);
		
		Session session1 = factory.openSession();
		Transaction t = session1.beginTransaction();
		
		try {
			session1.delete(first);
			t.commit();
			model.addAttribute("message", "Xóa thành công");
		} catch(Exception ex) {
			t.rollback();
			model.addAttribute("message", "Xóa thất bại");
		} finally {
			session1.close();
		}
		
		Session session2 = factory.getCurrentSession();
		String hql2 = "From New";
		Query query2 = session2.createQuery(hql2);
		List<New> list2 = query2.list();
		model.addAttribute("news", list2);
		
		return "admin/news/index_news";
	}
}
