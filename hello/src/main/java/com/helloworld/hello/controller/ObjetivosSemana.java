package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/objetivosSemana")
public class ObjetivosSemana {

	@GetMapping
	public String objetivosSemana() {
		return "Finalizar aprendizagem sobre MySQL e iniciar conhecimentos sobre Spring.";
	}
}