package db;

import models.Pirate;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class DBPirate {

    private static Session session;
    private static Transaction transaction;

    public static void save(Pirate pirate) {
        session = HibernateUtil.getSessionFactory().openSession();
        try {
            transaction = session.beginTransaction();
            session.save(pirate);
            transaction.commit();
        } catch (HibernateException e) {
            transaction.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    public static List<Pirate> getAll(){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Pirate> results = null;
        try {
            Criteria criteria = session.createCriteria(Pirate.class);
            results=criteria.list();
        } catch(HibernateException e){
            e.printStackTrace();
        } finally {
            session.close();
        }
        return results;
    }

    public static Pirate find(int id){
        Pirate result = null;
        session = HibernateUtil.getSessionFactory().openSession();
        try {
            Criteria criteria = session.createCriteria(Pirate.class);
            criteria.add(Restrictions.eq("id", id));
            result = (Pirate)criteria.uniqueResult();
        }catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        }
        return result;
    }

    public static List<Pirate> oldPirates(){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Pirate> results = null;
        try {
            Criteria criteria = session.createCriteria(Pirate.class);
            criteria.add(Restrictions.gt("age", 25));
            results = criteria.list();
        } catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        } return results;
    }

    public static List<Pirate> youngPirates(){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Pirate> results = null;
        try {
            Criteria criteria = session.createCriteria(Pirate.class);
            criteria.add(Restrictions.lt("age", 45));
            results = criteria.list();
        } catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        } return results;
    }


    public static List<Pirate> likePirates(){
        session = HibernateUtil.getSessionFactory().openSession();
        List<Pirate> results = null;
        try {
            Criteria criteria = session.createCriteria(Pirate.class);
            criteria.add(Restrictions.ilike("firstName", "Jac%"));
            results = criteria.list();
        } catch (HibernateException e){
            e.printStackTrace();
        }finally {
            session.close();
        } return results;
    }


    public static void delete(Pirate pirate) {
        session = HibernateUtil.getSessionFactory().openSession();
        try {
            transaction = session.beginTransaction();
            session.delete(pirate);
            transaction.commit();
        } catch (HibernateException e) {
            transaction.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    public static void deleteAll(){
        session = HibernateUtil.getSessionFactory().openSession();
        try {
            Criteria criteria = session.createCriteria(Pirate.class);
            List<Pirate> results = criteria.list();
            transaction = session.beginTransaction();s
                    for(Pirate pirate: results){
                session.delete(pirate);
                    }
                    transaction.commit();
        }catch (HibernateException e){
            transaction.rollback();
        }finally {
            session.close();
        }
    }
}
