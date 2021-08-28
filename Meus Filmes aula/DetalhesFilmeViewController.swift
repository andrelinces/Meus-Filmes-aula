//
//  DetalhesFilmeViewController.swift
//  Meus Filmes aula
//
//  Created by Andre Linces on 28/08/21.
//

import Foundation
import UIKit

//criando classe para controlar a view controller detalhes, vamos utilizar o padrão da classe UIViewController e vamos incrementar com o viewDidLoad
class DetalhesFilmeViewController: UIViewController{
    
    @IBOutlet weak var filmeImageView: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var descricaoLabel: UILabel!
    
    //criando atributo filme
    var filme: Filme!
    
    override func viewDidLoad() {
        //chamada para a super classe que estamos herdando.
        super.viewDidLoad()
        
        filmeImageView.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        
    }
    
}
