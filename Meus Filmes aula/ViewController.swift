//
//  ViewController.swift
//  Meus Filmes aula
//
//  Created by Andre Linces on 27/08/21.
//

import UIKit

class ViewController: UITableViewController{
    
    //Com o objeto criado e instanciando na classe filme, consegue utiliza-lo no array.
//    var filmes: [Filme] = []
    
    //Outra forma de montar o array, modo mais comum.
    var filmes = [Filme]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //objeto criado e instanciado.Inserindo no array o primeiro filme.
        var filme: Filme
        filme = Filme(titulo: "007 - Spectre", descricao: "Descrição 1", imagem: "filme1")
        
        filmes.append(filme)
        
        //inserindo no array o 2∘ filme, modo ensinado na aula, porém só funciona com imagem literal
        //filme = Filme(titulo: "Star Wars", descricao: "Descrição 2", imagem: #imageLiteral(resourceName: "filme2"))
        filme = Filme(titulo: "Star Wars", descricao: "Descrição 2", imagem: "filme2")
        
        filmes.append(filme)
        
        //inserindo no array 3 filme.
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descrição 3", imagem: "filme3")
        
        filmes.append(filme)
        
        //inserindo no array o 4 filme.
        filme = Filme(titulo: "Deadpool1", descricao: "Descrição 4", imagem: "filme4")
        
        filmes.append(filme)
        
        //inserindo no array o 5 filme.
        filme = Filme(titulo: "O Regresso", descricao: "Descrição 5", imagem: "filme5")
        
        filmes.append(filme)
        
        //inserindo no array o 6 filme.
        filme = Filme(titulo: "A Herdeira", descricao: "Descrição 6", imagem: "filme6")
        
        filmes.append(filme)
        
        //inserindo no array o 7 filme.
        filme = Filme(titulo: "Caçadores de Emoção", descricao: "Descrição 7", imagem: "filme7")
        
        filmes.append(filme)
        
        //inserindo no array o 8 filme.
        filme = Filme(titulo: "Regresso do Mal", descricao: "Descrição 8", imagem: "filme8")
        
        filmes.append(filme)
        
        //inserindo no array o 9 filme.
        filme = Filme(titulo: "Tarzan", descricao: "Descrição 9", imagem: "filme9")
        
        filmes.append(filme)
        
        //inserindo no array o 10 filme.
        filme = Filme(titulo: "Hardcore", descricao: "Descrição 10", imagem: "filme10")
        
        filmes.append(filme)
                
        
        // Do any additional setup after loading the view.
    }

    //Para exibir o array de filme, precisa sobrescrever 3 métodos
    
    //Define a quantidade de seções
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    //Define a quantidade de linhas na seção da table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    //configurar a célula
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //recuperando o filme
        let filme = filmes [ indexPath.row ]
        
        //criando constante do identificador da celula de reuso da table view
        let celulaReuso = "celulaReuso"
        
        //montando a célula, recuperando com indexPath e montando a celula com o indentificador celulaReuso, utilizando as! conversão para que o objeto celula tenha acesso a classe FilmeCelula
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        //exibindo a célula
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        //criado antes da classe filmeCelula
        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.imagem*/
        /*
        //criando o arredondamento da imagemview
        celula.filmeImageView.layer.cornerRadius = 42
        //clipsToBounds cortar até as bordas
        //celula.filmeImageView.clipsToBounds = true
        */
        
        //retornando o objeto celula do tipo UItableviewcell
        return celula
    }
    
}

