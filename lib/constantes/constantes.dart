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

const queryBuscarTipos= """
query GetTipos {
  tipo_produto {
    id
    tipo
  }
}

""";

const queryBuscarCategorias= """
query GetCategorias {
  categoria_produto {
    id
    categoria
  }
}

""";