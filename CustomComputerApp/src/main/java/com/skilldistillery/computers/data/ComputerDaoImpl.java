package com.skilldistillery.computers.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.computers.entities.Computer;

@Service
@Transactional
public class ComputerDaoImpl implements ComputerDAO{
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Computer findById(int id) {
		return em.find(Computer.class, id);
	}

	@Override
	public List<Computer> findAll() {
		String jpql = "SELECT c FROM Computer c";
		List<Computer> compList = em.createQuery(jpql, Computer.class).getResultList();
		return compList;
	}

	@Override
	public Computer create(Computer computer) {
		em.persist(computer);
		em.flush();
		return computer;
	}

	@Override
	public Computer update(Computer computer) {
		Computer dbComputer = em.find(Computer.class, computer.getId());
		dbComputer.setName(computer.getName());
		dbComputer.setRam(computer.getRam());
		dbComputer.setCpu(computer.getCpu());
		dbComputer.setVideoCard(computer.getVideoCard());
		dbComputer.setStorage(computer.getStorage());
		em.flush();
		return dbComputer;
	}

	@Override
	public boolean destroy(int id) {
		Computer dbComputer = em.find(Computer.class, id);
		em.remove(dbComputer);
		boolean successfulDelete = !em.contains(dbComputer);
		
		return successfulDelete;
	}
	
	

}
