package com.skilldistillery.computers.data;


import java.util.List;

import com.skilldistillery.computers.entities.Computer;

public interface ComputerDAO {
	public Computer findById(int id);
	public List<Computer> findAll();
	public Computer create(Computer computer);
	public Computer update(Computer computer);
	public boolean destroy(int id);

}
