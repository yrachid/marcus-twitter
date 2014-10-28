package br.com.aceleradora.models;

import java.util.ArrayList;
import java.util.List;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;

@Component
@SessionScoped
public class BancoDeDados {
	
	private List<Pessoa> pessoas;
	
	public BancoDeDados(){
		
		pessoas = new ArrayList<Pessoa>();
	}
	
	public void adicionaPessoa(Pessoa pessoa ){
		
		pessoas.add(pessoa);
	}
	
	public List<Pessoa> todasPessoas(){
		
		return pessoas;
	}
	
	public int testaPessoa(String nome){
		
		for (int i = 0; i < pessoas.size(); i++) {
			
			if(nome.equalsIgnoreCase(pessoas.get(i).getNome())){
				
				return i;
			}
		}	
		return -1;
	}
	
	public void atualizaTweet(int indice, Tweet tweet){
		
		pessoas.get(indice).adicionaTweet(tweet);
	}
	
	public Pessoa findPessoa(int indicePessoa){
		
		return pessoas.get(indicePessoa);
	}

}
