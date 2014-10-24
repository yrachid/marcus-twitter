package br.com.aceleradora.models;

import br.com.caelum.vraptor.Resource;

@Resource
public class Tweet {
	
	private String mensagem;

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	
}


