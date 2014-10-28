package br.com.aceleradora.controller;

import java.util.List;

import br.com.aceleradora.models.BancoDeDados;
import br.com.aceleradora.models.Pessoa;
import br.com.aceleradora.models.Tweet;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class IndexController {

	private BancoDeDados banco;
	
	public IndexController(BancoDeDados banco ){
		
		this.banco = banco;
		
		//banco = new BancoDeDados();
	}
	
	@Path("/")
	public void index(){
		
	}	
	
	public List<Pessoa> twitar(Pessoa pessoa,Tweet tweet, Result result){
		
		int indicePessoa = banco.testaPessoa(pessoa.getNome());
				
		if(indicePessoa != -1){
			
			banco.atualizaTweet(indicePessoa, tweet);			
			
		}else{
			
			pessoa.adicionaTweet(tweet);		
			banco.adicionaPessoa(pessoa);			
		}
		
		//System.out.println(tweet.getMensagem());
		//result.forwardTo(this).recebeDados(tweet.getMensagem(), result);
		
		return banco.todasPessoas();
	}
	
	
}
