package com.cap.entity;

public class Player {
	
	private String name;
	private int numberOfBingos;
	private int numberOfBangos;
	private int numberOfBongos;
	
	private int total;
	
	public void addBingo() {
		numberOfBingos++;
	}
	
	public void addBango() {
		numberOfBangos++;
	}
	
	public void addBongo() {
		numberOfBongos++;
	}
	
	
	public Player() {
		
	}
	
	public Player(String name) {
		this.name = name;
		
	}
	
	public int getTotal() {
		total = numberOfBingos + numberOfBangos + numberOfBongos;
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNumberOfBingos() {
		return numberOfBingos;
	}
	public void setNumberOfBingos(int numberOfBingos) {
		this.numberOfBingos = numberOfBingos;
	}
	public int getNumberOfBangos() {
		return numberOfBangos;
	}
	public void setNumberOfBangos(int numberOfBangos) {
		this.numberOfBangos = numberOfBangos;
	}
	public int getNumberOfBongos() {
		return numberOfBongos;
	}
	public void setNumberOfBongos(int numberOfBongos) {
		this.numberOfBongos = numberOfBongos;
	}

	@Override
	public String toString() {
		return "Player [name=" + name + ", numberOfBingos=" + numberOfBingos + ", numberOfBangos=" + numberOfBangos
				+ ", numberOfBongos=" + numberOfBongos + ", total=" + total + "]";
	}
	
	
	

}
