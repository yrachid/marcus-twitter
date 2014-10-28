package br.com.aceleradora.models;

import java.util.ArrayList;
import java.util.List;

public class Pessoa {
	

	private List<Tweet> tweets;
	
	private String nome;	
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public List<Tweet> getTweets() {
		return tweets;
	}

	public Pessoa(){
		
		tweets = new ArrayList<Tweet>();
	}
	
	public void adicionaTweet(Tweet tweet){
		
		tweets.add(tweet);
	}
	
	public List<Tweet> todosTweets(){
		
		return tweets;
	}

}
