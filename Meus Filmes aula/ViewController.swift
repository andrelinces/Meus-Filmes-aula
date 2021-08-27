//
//  ViewController.swift
//  Meus Filmes aula
//
//  Created by Andre Linces on 27/08/21.
//

import UIKit

class ViewController: UITableViewController{
    
    //Com o objeto criado e instanciando na classe filme, consegue utiliza-lo no array.
    var filmes: [Filme] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //objeto criado e instanciado.Inserindo no array o primeiro filme.
        var filme: Filme
        filme = Filme(titulo: "Filme 1", descricao: "Descrição 1")
        
        filmes.append(filme)
        
        //nserindo no array o segundo filme.
        filme = Filme(titulo: "Filme 2", descricao: "Descrição 2")
        
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
        //montando a célula, recuperando com indexPath e montando a celula com o indentificador celulaReuso
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        //exibindo a célula
        celula.textLabel?.text = filme.titulo
        
        //retornando o objeto celula do tipo UItableviewcell
        return celula
    }
    
}

