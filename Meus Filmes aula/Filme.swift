//
//  Filme.swift
//  Meus Filmes aula
//
//  Created by Andre Linces on 27/08/21.
//

import UIKit

// criando classe para o app filme, ela vai ter os objetos: imagem, título e descrição.
class Filme {
    
    //criando objetos
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    //Inicializando célula com os atributos, alterado parâmetro ensinado na aula do UIImage para imagem: String (assim consegue montar a celula pelo nome da imagem)
    init (titulo: String, descricao: String, imagem: String){
        self.titulo = titulo
        self.descricao = descricao
        // self.imagem = imagem
        //Instanciando a imagem pelo nome, diferente do ensinado na aula.
        self.imagem = UIImage(named: imagem)
    }
    
    
    
}
