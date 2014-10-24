package br.com.aceleradora.controller;

import java.util.ArrayList;
import java.util.List;

import br.com.aceleradora.models.BancoDeDados;
import br.com.aceleradora.models.Tweet;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.http.ognl.ListAccessor;

@Resource
public class IndexController {

	private BancoDeDados banco;
	
	public IndexController(BancoDeDados banco ){
		
		this.banco = banco;
		
		//banco = new BancoDeDados();
	}
	
	@Path("/")
	public void index(){}
	
	public void recebeDados(String dado, Result result){
	

		result.include("meunome", dado);
	}
	
	public List<Tweet> twitar(Tweet tweet, Result result){
		
		banco.adicionaTweet(tweet);
		
		//System.out.println(tweet.getMensagem());
		//result.forwardTo(this).recebeDados(tweet.getMensagem(), result);
		
		return banco.todosTweets();
	}
	
}
