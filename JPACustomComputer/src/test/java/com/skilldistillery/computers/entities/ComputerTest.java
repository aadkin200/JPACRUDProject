package com.skilldistillery.computers.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class ComputerTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Computer computer;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("CustomComputerPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		computer = em.find(Computer.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		computer = null;
	}

	@Test
	@DisplayName("Test Computer entity mapping")
	void test() {
		assertNotNull(computer);
		assertEquals("White Lightning", computer.getName());
		assertEquals("CORSAIR Vengeance RGB Pro 32GB (2 x 16GB)", computer.getRam());
		assertEquals("Intel Core i7-10700k Comet Lake 8-Core 3.8 GHz", computer.getCpu());
		assertEquals("MSI Gaming GeForce GTX 1660 SUPER 6GB", computer.getVideoCard());
		assertEquals("Western Digital WD BLACK SN750 NVMe M.2 2280 500GB", computer.getStorage());
		
	}

}
