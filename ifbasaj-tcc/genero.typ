// genero.typ — Flexão de gênero para identificação de pessoas no documento.

// Valida o valor de um parâmetro `<identificacao>-genero`.
#let validar-genero(genero, campo) = assert(
  genero in ("m", "f"),
  message: campo + " deve ser \"m\" ou \"f\" (recebido: " + repr(genero) + ")",
)

// Devolve a forma masculina ou feminina conforme o gênero.
#let flexao(genero, masculino, feminino) = if genero == "f" { feminino } else { masculino }

// Frase completa de autoria usada nas fontes (figura, quadro, tabela, código e myself).
#let fonte-autoral(genero, ano) = {
  let frase = flexao(genero, "Elaborado pelo próprio autor", "Elaborado pela própria autora")
  [_#frase (#ano)._]
}
