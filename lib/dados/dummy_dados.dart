

import 'package:app_cooperativa_livros_danilo/models/generos_livros.dart';
import 'package:app_cooperativa_livros_danilo/models/livro.dart';
import 'package:app_cooperativa_livros_danilo/models/usuarios_perfil.dart';

final GENEROS = [
  GenerosLivros(nomeDoGenero: 'Ação', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Aventura', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Clássicos', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Comédia', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Contos', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Drama', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Espiritual', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Fantasia', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Ficção Científica', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Ficção Histórica', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Humor', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Mistério', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Não ficção', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Paranormal', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Poesia', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Romance', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Suspense', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Terror', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Fanfic', selecionado: false),
  GenerosLivros(nomeDoGenero: 'Outros', selecionado: false),
];

final USUARIOS = [
  UsuariosPerfil(nome: 'Angelina Jolie', imagemAvatar: 'assets/imagens/angelinaJolie.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Bruxo Mito', imagemAvatar: 'assets/imagens/bruxo.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Cameron Diaz', imagemAvatar: 'assets/imagens/cameronDiaz.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'CR7 Ronaldo', imagemAvatar: 'assets/imagens/cr7.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Mano Brown', imagemAvatar: 'assets/imagens/mano.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Marcelo Latera', imagemAvatar: 'assets/imagens/marcelo.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Mariana Ximenes', imagemAvatar: 'assets/imagens/marianaXimenes.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Lionel Messi', imagemAvatar: 'assets/imagens/messi.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Neymar Jr', imagemAvatar: 'assets/imagens/neymar.png',selecionado:  false),

  UsuariosPerfil(nome: 'Bozo Peste', imagemAvatar: 'assets/imagens/bozo.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Dilmãe Dilma', imagemAvatar: 'assets/imagens/dilmae.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Kakaroto Goku', imagemAvatar: 'assets/imagens/goku.jpg',selecionado:  false),
  UsuariosPerfil(nome: 'Lula Livre', imagemAvatar: 'assets/imagens/lula.jpeg',selecionado:  false),
  UsuariosPerfil(nome: 'Moro Dallanol', imagemAvatar: 'assets/imagens/moro.jpg',selecionado:  false),
  UsuariosPerfil(nome: 'Vegeta Verme', imagemAvatar: 'assets/imagens/vegeta.jpeg',selecionado:  false),
];

final LIVROS = [
  Livro(titulo: 'Piadas NERDS', autor: 'Ivan Baroni', ano: 2000, genero: 'Comédia', preco: 20.45, urlImage: 'assets/imagens/livros/comedia.jpg'),
  Livro(titulo: 'A ilha', autor: 'Não sei', ano: 2001, genero: 'Aventura', preco: 15.45, urlImage: 'assets/imagens/livros/a_ilha.jpg'),
  Livro(titulo: 'Jogos Vorazes', autor: 'Suzanne Collins', ano: 2002, genero: 'Ação', preco: 35.45, urlImage: 'assets/imagens/livros/acao.jpg'),
  Livro(titulo: 'Destruidor de mundos', autor: 'não sei', ano: 2003, genero: 'Contos', preco: 30.45, urlImage: 'assets/imagens/livros/destruidor_mundos.jpg'),
  Livro(titulo: 'Depois de você', autor: 'Jojo Moyes', ano: 2004, genero: 'Drama', preco: 120.45, urlImage: 'assets/imagens/livros/drama.jpg'),
  Livro(titulo: 'Harry Poter', autor: 'J. K. Rowling', ano: 2005, genero: 'Fantasia', preco: 80.45, urlImage: 'assets/imagens/livros/harryPotter.jpg'),
  Livro(titulo: 'O mistério da casa verde', autor: 'Moacyr Scliar', ano: 1994, genero: 'Mistério', preco: 200.45, urlImage: 'assets/imagens/livros/misterio.jpg'),
  Livro(titulo: 'Rastro de sangue', autor: 'Kerri Maniscalco', ano: 2020, genero: 'Ficção Cientifica', preco: 285.45, urlImage: 'assets/imagens/livros/rastro_de_sangue.jpg'),
  Livro(titulo: 'IT', autor: 'Stephen King', ano: 2000, genero: 'Terror', preco: 10.45, urlImage: 'assets/imagens/livros/terror.jpg'),
  Livro(titulo: 'The Walking Dead', autor: 'Robert Kirkman', ano: 2021, genero: 'Paranormal', preco: 12.45, urlImage: 'assets/imagens/livros/walking_dead.jpg'),

];