package services;

import java.io.IOException;

import api.Frases;
import api.InfoLOTR;
import api.Personajes;

public class InicioService {
	public String getFrase() throws IOException, InterruptedException {
		Frases info = InfoLOTR.getInfo();
		return info.getDocs().get(0).getDialog();
	}
	
	public String getAutor() throws IOException, InterruptedException {
		Frases info = InfoLOTR.getInfo();
		String autorId = info.getDocs().get(0).getCharacter();
		Personajes autor = InfoLOTR.getAutor(autorId);
		return autor.getDocs().get(0).getName();
	}
}
