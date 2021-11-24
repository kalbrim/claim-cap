package com.cap.service;

import java.util.ArrayList;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cap.entity.Player;

// not annotation
@Service
public class BBBService {
	
	// arraylist to hold players
	private List<Player> playerArrayList = new ArrayList<Player>();
	
	
	// get playerArrayList
	public List<Player> getPlayerArrayList(){
		return playerArrayList;
	}
	// add player
	public void addPlayer(Player player) {
		playerArrayList.add(player);
	}
	
	// delete player
	// need to change
	public void deletePlayer(String name) {
		for(int i = 0; i < playerArrayList.size(); i++) {
			if(playerArrayList.get(i).getName().equals(name)) {
				playerArrayList.remove(i);
			}
		}
	
	}

}
