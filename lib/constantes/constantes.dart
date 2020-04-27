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

const queryBuscarTipos = """
query GetTipos {
  tipo_produto {
    id
    tipo
  }
}

""";

const queryBuscarCategorias = """
query GetCategorias {
  categoria_produto {
    id
    categoria
  }
}

""";

const mutationAddProtudo = """
    mutation AddProduto(\$nome: String, \$valor: float8, \$categoria: uuid, \$tipo: uuid) {
  insert_produto(objects: {nome: \$nome, valor: \$valor, id_categoria_produto: \$categoria, id_tipo_produto: \$tipo}) {
    affected_rows
  }
}
""";
