const queryBuscarProdutos = """
    query GetProdutos {
      produto {
        id
        nome
        valor
      tipo_produto {
        tipo
      }
      categoria_produto {
        categoria
      }
  }
}""";