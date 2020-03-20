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

import ptithcm.entity.Member;
import ptithcm.entity.TableBook;



@Transactional
@Controller
@RequestMapping("/admin/restaurant/")
public class MemberController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("member/index")
	public String menu(ModelMap model) {

		Session session = factory.getCurrentSession();
		String hql = "From Member";
		Query query = session.createQuery(hql);

		List<Member> list = query.list();

		model.addAttribute("members", list);


		return "admin/member/index_member";
	}
	
	@RequestMapping(value = "member/insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		
		model.addAttribute("member", new Member());
		
		model.addAttribute("type", "insert");
		
		return "admin/member/insert_member";
	}
	
	@RequestMapping(value = "member/insert", method = RequestMethod.POST)
	public String insert_food(ModelMap model, @ModelAttribute("member") Member member) {
		
		
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
		
		
		Session session2 = factory.getCurrentSession();
		String hql2 = "From Member";
		Query query2 = session2.createQuery(hql2);

		List<Member> list2 = query2.list();

		model.addAttribute("members", list2);


		return "admin/member/index_member";
	}
	
	@RequestMapping(value = "member/update/{id}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("id") String id) {
		
		Session session = factory.getCurrentSession();
		String hql = "FROM Member WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<Member> list = query.list();
		
		model.addAttribute("member", list.get(0));
		
		model.addAttribute("type", "update");
		  	
		return "admin/member/insert_member";
	}
	
	@RequestMapping(value = "member/update", method = RequestMethod.POST)
	public String update_food(ModelMap model, @ModelAttribute("member") Member member) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.update(member);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công!");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại!");
		} finally {
			session.close();
		}

		Session session2 = factory.getCurrentSession();
		String hql2 = "From Member";
		Query query2 = session2.createQuery(hql2);

		List<Member> list2 = query2.list();

		model.addAttribute("members", list2);


		return "admin/member/index_member";
	}
	
	
	
	
	
	@RequestMapping(value = "member/delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Member WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setString("id", id);
		List<Member> list = query.list();
		Member table = list.get(0);

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
		String hql2 = "From Member";
		Query query2 = session2.createQuery(hql2);

		List<Member> list2 = query2.list();

		model.addAttribute("members", list2);


		return "admin/member/index_member";
	}
	
	
}
