// main.typ — documento principal do TCC (IFBA campus Santo Antônio de Jesus, ADS).
//
// Este arquivo só guarda (1) os dados do trabalho e (2) a ordem das partes do documento.
// O texto fica em arquivos separados:
//   pre-textuais/   resumo, abstract, dedicatória, agradecimentos, epígrafe, errata
//   capitulos/      um arquivo por capítulo (01-introducao.typ ... 07-consideracoes-finais.typ)
//   pos-textuais/   apêndices (material do aluno) e anexos (material de terceiros)
//   assets/         figuras, diagramas, gráficos, códigos e algoritmos citados no texto
//   data/           dados em CSV usados em tabelas
//
// Cada capítulo traz caixas #orientacao[...] com o que a seção DEVE e NÃO DEVE conter e
// exemplos dos recursos do template. Apague as caixas e os exemplos à medida que escrever.
//
// Caminhos de arquivo: passe sempre image("...") nos parâmetros abaixo. Um caminho em texto
// ("assets/x.pdf") é resolvido a partir da pasta ifbasaj-tcc/ e não é encontrado.

#import "ifbasaj-tcc/imports.typ": *

#show: template.with(
  // ── Identificação (obrigatórios) ────────────────────────────────────────────
  titulo: "Título do Trabalho de Conclusão de Curso",
  autor: "Nome Completo da Aluna",
  autor-genero: "f", // "m" (padrão) ou "f"
  orientador: "Profa. Dra. Nome da Orientadora",
  orientador-genero: "f", // "m" (padrão) ou "f"
  // co-orientador: "Prof. Me. Nome do Coorientador",
  // co-orientador-genero: "m", // "m" (padrão) ou "f"
  data-banca: datetime(year: 2026, month: 12, day: 10),
  // O primeiro membro é o orientador/orientadora; o rótulo segue orientador-genero.
  banca: (
    [Profa. Dra. Nome da Orientadora (IFBA)],
    [Prof. Me. Nome do Avaliador 1 (IFBA)],
    [Prof. Me. Nome do Avaliador 2 (IFBA)],
  ),

  // ── Instituição (os padrões já são do IFBA SAJ / ADS) ──────────────────────
  // instituicao: [Instituto Federal de Educação, Ciência e Tecnologia da Bahia],
  // curso: [Análise e Desenvolvimento de Sistemas],
  // local: "Santo Antônio de Jesus",
  logo: image("./assets/logo.png", height: 2.7cm) , // sem logo: moldura tracejada

  // ── Pré-textuais ────────────────────────────────────────────────────────────
  // Ficha catalográfica: emitida pela biblioteca do campus; troque o PDF de exemplo.
  ficha-catalografica: image("assets/ficha-exemplo.pdf", width: 100%, height: 100%, fit: "contain"),
  // Folha de aprovação: none = gerada a partir de titulo/autor/banca/data-banca.
  // Depois da defesa, use a folha assinada digitalizada:
  // texto-aprovacao: image("assets/folha-aprovacao-assinada.pdf", width: 100%, height: 100%, fit: "contain"),
  // errata: include "pre-textuais/errata.typ", // só na versão corrigida, pós-depósito
  dedicatoria: include "pre-textuais/dedicatoria.typ",
  agradecimentos: include "pre-textuais/agradecimentos.typ",
  epigrafe: include "pre-textuais/epigrafe.typ",
  resumo-conteudo: include "pre-textuais/resumo.typ",
  resumo-palavras: ("Palavra-chave 1", "Palavra-chave 2", "Palavra-chave 3"),
  abstract-conteudo: include "pre-textuais/abstract.typ",
  abstract-palavras: ("Keyword 1", "Keyword 2", "Keyword 3"),

  // ── Referências e saída ─────────────────────────────────────────────────────
  bibliografia: read("referencias.bib"),
  versao-impressao: false, // true = margens espelhadas e capítulos em página ímpar
  // codly-habilitado: true, // destaque de sintaxe em #codigo e #algoritmo
)

// ── Textuais ──────────────────────────────────────────────────────────────────
// Comente um include para compilar sem o capítulo (ex.: capítulos ainda não escritos).
#include "capitulos/01-introducao.typ"
#include "capitulos/02-referencial-teorico.typ"
#include "capitulos/03-trabalhos-correlatos.typ"
#include "capitulos/04-metodologia.typ"
#include "capitulos/05-desenvolvimento.typ"
#include "capitulos/06-resultados.typ"
#include "capitulos/07-consideracoes-finais.typ"

// ── Pós-textuais (ordem NBR 14724) ────────────────────────────────────────────
#references()  // só lista obras citadas no texto
#glossario()   // gerado pelos #gloss do texto; some se não houver termos

#apendice      // a partir daqui, "= Título" vira "Apêndice A – Título"
#include "pos-textuais/apendice-a-roteiro.typ"
#include "pos-textuais/apendice-b-codigo-fonte.typ"

#anexo         // a partir daqui, "= Título" vira "Anexo A – Título"
#include "pos-textuais/anexo-a-portaria.typ"
