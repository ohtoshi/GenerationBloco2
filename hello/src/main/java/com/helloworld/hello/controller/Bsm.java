package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bsm")
public class Bsm {

	@GetMapping
	public String bsm() {
		return "Orientação ao Futuro, Responsabilidade Pessoal, Mentalidade de Crescimento, Persistência, "
				+ "Trabalho em Equipe, Atenção aos Detalhes, Proatividade, Comunicação";
	}
}