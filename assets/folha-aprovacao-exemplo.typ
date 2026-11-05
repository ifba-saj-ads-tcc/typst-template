// folha-aprovacao-exemplo.typ — Folha de aprovação de exemplo, montada a partir de parâmetros.
// Referência visual da página gerada pelo template; o texto é composto pela mesma
// estratégia de `_texto-aprovacao-pad` em ifbasaj-tcc/pre-textual.typ.

#import "@preview/datify:1.3.0": display-date
#import "../ifbasaj-tcc/genero.typ": flexao

// --- Parâmetros ---------------------------------------------------------
#let autor = "Sandra de Souza"
#let autor-genero = "f" // "m" ou "f"
#let titulo = "Desenvolvimento de um Sistema de TCC Autogerado para o IFBA SAJ"
#let instituicao = [Instituto Federal de Educação, Ciência e Tecnologia da Bahia]
#let curso = [Análise e Desenvolvimento de Sistemas]
#let local = "Santo Antônio de Jesus"
#let data-banca = datetime(year: 2026, month: 12, day: 10)
#let orientador-genero = "m" // rótulo do primeiro membro da banca
#let banca = (
  "Prof. Dr. Orientador do IFBA",
  "Prof. Dr. Fulano de Tal (IFBA)",
  "Prof. Dr. Beltrano de Tal (UFBA)",
)

// --- Composição ---------------------------------------------------------
#let grau = flexao(autor-genero, "Tecnólogo", "Tecnóloga")
#let rotulo-orientador = flexao(orientador-genero, "Orientador", "Orientadora")
#let autor-upper = upper(autor)
#let titulo-upper = upper(titulo)
#let assinaturas = banca.enumerate().map(((i, membro)) => {
  stack(
    dir: ttb,
    spacing: 2pt,
    line(length: 10cm, stroke: 0.5pt),
    text(weight: "bold", membro),
    if i == 0 { text(size: 10pt, rotulo-orientador) },
  )
}).join(v(1.2cm))

#set page(margin: 2cm)
#set text(size: 12pt, font: "New Computer Modern", lang: "pt", region: "br")

#stack(
  dir: ttb,
  spacing: 0pt,
  align(center, text(weight: "bold", autor-upper)),
  v(2cm),
  align(center, text(weight: "bold", titulo-upper)),
  v(1.5cm),
  par(justify: true, leading: 0.65em, [A banca examinadora, abaixo listada, aprova o Trabalho de Conclusão de Curso #titulo-upper elaborado por #autor-upper como requisito parcial para obtenção do grau de #grau em #curso, pelo #instituicao.]),
  v(1cm),
  align(center, [#local, #display-date(data-banca, pattern: "full")]),
  v(1cm),
  align(center, [Comissão Examinadora]),
  v(1cm),
  align(center, assinaturas),
)
