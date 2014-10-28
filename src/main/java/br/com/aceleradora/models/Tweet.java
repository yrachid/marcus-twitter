package br.com.aceleradora.models;

import br.com.caelum.vraptor.Resource;

@Resource
public class Tweet {
	
	private int id;
	private String mensagem;
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getId() {
		return id;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	
}


