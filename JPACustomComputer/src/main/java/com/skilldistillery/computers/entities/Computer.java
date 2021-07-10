package com.skilldistillery.computers.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Computer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="ram")
	private String ram;
	@Column(name="cpu")
	private String cpu;
	@Column(name="video_card")
	private String videoCard;
	@Column(name="storage")
	private String storage;

	public Computer() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
	}

	public String getVideoCard() {
		return videoCard;
	}

	public void setVideoCard(String videoCard) {
		this.videoCard = videoCard;
	}

	public String getStorage() {
		return storage;
	}

	public void setStorage(String storage) {
		this.storage = storage;
	}

	@Override
	public String toString() {
		return "Computer [id=" + id + ", name=" + name + ", ram=" + ram + ", cpu=" + cpu + ", videoCard=" + videoCard
				+ ", storage=" + storage + "]";
	}

	
	
}
