# Template de TCC — IFBA SAJ (ADS)

[![Typst](https://img.shields.io/badge/Typst-0.15.1-239DAD?logo=typst)](https://typst.app) [![Tinymist](https://img.shields.io/badge/VS%20Code-Tinymist-007ACC?logo=visualstudiocode)](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

Template de documento [Typst](https://typst.app) para Trabalho de Conclusão de Curso do **IFBA — campus Santo Antônio de Jesus**, curso **Análise e Desenvolvimento de Sistemas (ADS)**. O arquivo de entrada é `main.typ`; `ifbasaj-tcc/imports.typ` reúne as funções de formatação usadas pelo modelo. A estrutura segue as normas **NBR 14724**, **NBR 10520:2023** e **NBR 6023:2018**; confirme eventuais exigências adicionais com o curso.

> **Versão do compilador usada no projeto:** Typst `0.15.1`. Use essa versão para reproduzir a compilação do exemplo.

## Sumário

- [Template de TCC — IFBA SAJ (ADS)](#template-de-tcc--ifba-saj-ads)
  - [Sumário](#sumário)
  - [O que é](#o-que-é)
  - [Pré-requisitos](#pré-requisitos)
  - [Instalação](#instalação)
    - [1. Typst](#1-typst)
    - [2. VS Code + Tinymist](#2-vs-code--tinymist)
  - [Alternativa sem VS Code](#alternativa-sem-vs-code)
  - [Como começar](#como-começar)
    - [Onde colocar o template](#onde-colocar-o-template)
  - [O que preencher — `template.with(...)`](#o-que-preencher--templatewith)
    - [Tabela de parâmetros](#tabela-de-parâmetros)
    - [Exemplo mínimo copiável](#exemplo-mínimo-copiável)
  - [Escrevendo seu TCC](#escrevendo-seu-tcc)
    - [Recursos e onde ver o exemplo](#recursos-e-onde-ver-o-exemplo)
    - [Figuras, tabelas, quadros](#figuras-tabelas-quadros)
    - [Código e algoritmo](#código-e-algoritmo)
    - [Equações e diagramas](#equações-e-diagramas)
    - [Citações ABNT (NBR 10520:2023)](#citações-abnt-nbr-105202023)
    - [Abreviaturas, glossário, apêndices e anexos](#abreviaturas-glossário-apêndices-e-anexos)
  - [Compilação — digital vs impressão](#compilação--digital-vs-impressão)
  - [Estrutura de pastas](#estrutura-de-pastas)
    - [Estrutura obrigatória e regras de cada seção](#estrutura-obrigatória-e-regras-de-cada-seção)
  - [FAQ / Troubleshooting](#faq--troubleshooting)

## O que é

- Este repositório fornece um modelo editável que formata capa, folha de rosto, ficha catalográfica, errata, folha de aprovação, dedicatória, agradecimentos, epígrafe, resumos, listas e sumário.
- `main.typ` é um exemplo completo e compilável; altere seus dados e conteúdo para escrever o TCC.
- O modelo usa dependências da galeria Typst `@preview` para código, diagramas, gráficos e formatação de datas; o exemplo também demonstra diagramas e gráficos locais em `assets/`.

## Pré-requisitos

- **Typst 0.15.1** — ver [Instalação](#instalação).
- **VS Code** (recomendado) + extensão **Tinymist** (obrigatória) — preview ao vivo, autocompletar e diagnóstico. Extensão **PlantUML** (`jebbs.plantuml`) é opcional, apenas se usar diagramas PlantUML.
- Git (para clonar).

> As extensões recomendadas já estão em `.vscode/extensions.json` — o VS Code sugere instalá-las automaticamente ao abrir o projeto.

## Instalação

### 1. Typst

Escolha uma opção:

```powershell
# Windows — winget
winget install --id Typst.Typst

# Windows — scoop
scoop install typst

# Rust toolchain (qualquer SO)
cargo install --locked typst-cli

# Ou baixe o instalador em https://github.com/typst/typst/releases
# Ou use o app web https://typst.app (sem instalação local)
```

Verifique:

```powershell
typst --version
# deve mostrar 0.15.1
```

> Se a versão divergir, instale ou selecione Typst `0.15.1` para reproduzir o PDF de exemplo.

### 2. VS Code + Tinymist

1. Instale o [VS Code](https://code.visualstudio.com/).
2. Abra a pasta do projeto — aceite instalar as extensões recomendadas, ou instale manualmente:
   - `myriad-dreamin.tinymist` (obrigatória)
   - `jebbs.plantuml` (opcional)
3. Abra `main.typ` — o preview do Tinymist aparece automaticamente.

<details>
<summary>Linux / macOS</summary>

```bash
# macOS — Homebrew
brew install typst

# Linux — cargo ou binário do GitHub Releases
cargo install --locked typst-cli
typst --version
```

VS Code e Tinymist funcionam da mesma forma em Linux/macOS.

</details>

## Alternativa sem VS Code

Você não precisa do VS Code para compilar:

```powershell
# Compilar uma vez
typst compile main.typ

# Watch — recompila a cada salvamento
typst watch main.typ

# Saída padrão: main.pdf (ou passe o destino)
typst compile main.typ saida.pdf
```

Também é possível editar e compilar direto no [Typst App](https://typst.app).

## Como começar

```powershell
# 1. Clonar (ou use "Use this template" no GitHub)
git clone <url-do-repo>
Set-Location typst-template

# 2. Abrir no VS Code
code .

# 3. Abrir main.typ — o PDF aparece no preview do Tinymist
# Ou compilar via CLI:
typst compile main.typ
```

- O arquivo para editar é `main.typ` — ele já contém um TCC de exemplo com todos os recursos.
- Para começar seu TCC, edite `main.typ` diretamente.

### Onde colocar o template

Onde o TCC fica depende do que o seu repositório contém. É ali que o orientador lê o texto e abre
as issues de acompanhamento.

| Seu repositório | Onde fica o TCC |
|---|---|
| **Só o TCC** | na raiz do repositório |
| **Código do projeto + TCC** | na pasta `docs/` |

**Só o TCC.** Use este template como o próprio repositório ("Use this template" no GitHub, ou
clone e troque o remoto). O `main.typ` fica na raiz e o workflow funciona sem mudança.

**Código do projeto + TCC.**

```
<repo-do-projeto>/
  README.md        # o que é o projeto e como rodar
  src/ ...         # código do projeto (organização livre, fora de docs/)
  docs/            # conteúdo deste template: main.typ, capitulos/, referencias.bib, assets/ ...
  .github/workflows/pdf.yml   # copiado deste template, com TCC_DIR: docs
```

1. Copie o conteúdo deste repositório (menos `.git/` e `.github/`) para a pasta `docs/` do seu projeto.
2. Copie `.github/workflows/pdf.yml` para a raiz do projeto e troque `TCC_DIR: .` por
   `TCC_DIR: docs`.
3. Abra `docs/main.typ` no VS Code para escrever. Se o projeto tiver outra documentação, deixe-a
   em subpastas de `docs/` que não se misturem com os arquivos do template.

## O que preencher — `template.with(...)`

Todo o documento é configurado no cabeçalho de `main.typ`:

```typst
#show: template.with(
  titulo: "Seu título aqui",
  autor: "Seu Nome",
  autor-genero: "m", // "m" (padrão) ou "f"
  orientador: "Prof. Dr. Nome do Orientador",
  orientador-genero: "m", // "m" (padrão) ou "f"
  data-banca: datetime(year: 2026, month: 8, day: 4),
  // ... demais campos abaixo
)
```

### Tabela de parâmetros

| Parâmetro | Obrigatório | Tipo | Padrão | Descrição |
|---|---|---|---|---|
| `titulo` | **sim** | `str` | — | Título do TCC (capa e folha de rosto). Renderizado em **CAIXA-ALTA** (NBR 14724). |
| `autor` | **sim** | `str` | — | Nome do autor. Renderizado em **CAIXA-ALTA**. |
| `autor-genero` | não | `str` | `"m"` | Gênero do autor: `"m"` ou `"f"`. Controla `Tecnólogo`/`Tecnóloga` e a frase de autoria das fontes. |
| `orientador` | **sim** | `str` | — | Nome do orientador (caixa normal, NBR 14724). |
| `orientador-genero` | não | `str` | `"m"` | Gênero do orientador: `"m"` ou `"f"`. Controla `Orientador`/`Orientadora` na folha de rosto e no rótulo de `banca[0]`. |
| `data-banca` | **sim** | `datetime` | — | Data da banca (ex.: `datetime(year: 2026, month: 8, day: 4)`). Ano é derivado automaticamente para capa/folha; data completa vai na folha de aprovação. |
| `co-orientador` | não | `str`/`content` | `none` | Co-orientador. |
| `co-orientador-genero` | não | `str` | `"m"` | Gênero do coorientador: `"m"` ou `"f"`. Afeta apenas a folha de rosto. |
| `instituicao` | não | `content` | `Instituto Federal de Educação, Ciência e Tecnologia da Bahia` | Instituição na capa. Renderizada em **CAIXA-ALTA**. |
| `curso` | não | `content` | `Análise e Desenvolvimento de Sistemas` | Curso (usado no preâmbulo e folha de aprovação). |
| `local` | não | `str` | `Santo Antônio de Jesus` | Cidade. Renderizada em **CAIXA-ALTA**. |
| `logo` | não | `str`/`content`/`none` | Placeholder tracejado | Logo da capa (`"caminho/logo.png"` ou `image(...)`). |
| `ficha-catalografica` | **sim** | `str`/`content` | — | Ficha catalográfica — `image("assets/ficha-exemplo.pdf")` ou um caminho para seu próprio PDF. Gera página no verso da folha de rosto. |
| `errata` | não | `content`/`none` | `none` | Errata (opcional, pós-depósito). |
| `texto-aprovacao` | não | `str`/`content`/`none` | `none` (auto-gerado) | Folha de aprovação. Se `none`, é **gerada automaticamente** a partir de `titulo`/`autor`/`banca`/`local`/`data-banca` (formato ABNT); se `str`, imagem em página cheia; se `content`, usa o fornecido. |
| `banca` | **sim** | `array[content]` | — | Membros da banca. Primeiro é marcado como `Orientador`/`Orientadora` (conforme `orientador-genero`) na versão auto-gerada. |
| `dedicatoria` | não | `content`/`none` | `none` | Dedicatória. |
| `agradecimentos` | não | `content`/`none` | `none` | Agradecimentos. |
| `epigrafe` | não | `content`/`none` | `none` | Epígrafe. |
| `resumo-conteudo` | **sim** | `content` | — | Texto do resumo (pt-BR). |
| `resumo-palavras` | **sim** | `array[str]` | — | Palavras-chave do resumo. |
| `abstract-conteudo` | **sim** | `content` | — | Texto do abstract (EN). |
| `abstract-palavras` | **sim** | `array[str]` | — | Keywords do abstract. |
| `versao-impressao` | não | `bool` | `false` | `false` = digital, `true` = impressão (margens ABNT). |
| `codly-habilitado` | não | `bool` | `true` | Habilita `codly` para blocos de código. |
| `bibliografia` | **sim** | `bytes` | — | Conteúdo de um arquivo `.bib`, por exemplo `read("referencias.bib")`; o template interpreta um subconjunto de BibTeX. |

> `ficha-catalografica` aceita **caminho** (`str`) ou **conteúdo** (`image(...)`).

> **Gênero.** `autor-genero`, `orientador-genero` e `co-orientador-genero` aceitam `"m"` (padrão) ou `"f"`. O default masculino preserva a saída de documentos já existentes; para uma orientadora, use `orientador-genero: "f"`, e para uma aluna, `autor-genero: "f"`. `autor-genero` também controla a frase `Elaborado pelo próprio autor`/`Elaborado pela própria autora` nas fontes e em `myself`. O coorientador não recebe rótulo na folha de aprovação.

> **Preâmbulo e folha de aprovação são gerados automaticamente** (estratégia `let _preamb`): o preâmbulo compõe `"Trabalho de Conclusão de Curso apresentado a #instituicao, campus #local, como requisito parcial para obtenção do grau de Tecnólogo/Tecnóloga em #curso."` (conforme `autor-genero`) e a folha de aprovação monta nome/título em caixa-alta, parágrafo da banca e `local` + `data-banca` + `Comissão Examinadora` + assinaturas.

### Exemplo mínimo copiável

```typst
#import "ifbasaj-tcc/imports.typ": *

#show: template.with(
  titulo: "Meu TCC",
  autor: "Maria Silva",
  autor-genero: "f",
  orientador: "Profa. Dra. Maria Souza",
  orientador-genero: "f",
  // co-orientador: "Prof. Me. João Lima",
  // co-orientador-genero: "m",
  data-banca: datetime(year: 2026, month: 8, day: 4),
  banca: ([Profa. Dra. Maria Souza - IFBA], [Prof. Dr. Ciclano - IFBA]),
  ficha-catalografica: image("assets/ficha-exemplo.pdf", width: 100%, height: 100%, fit: "contain"),
  resumo-conteudo: [Resumo do trabalho...],
  resumo-palavras: ("Palavra1", "Palavra2"),
  abstract-conteudo: [Abstract...],
  abstract-palavras: ("Keyword1", "Keyword2"),
  bibliografia: read("referencias.bib"),
)

= Introdução

Seu texto aqui...
```

## Escrevendo seu TCC

Funções de formatação reexportadas por `ifbasaj-tcc/imports.typ` — os exemplos abaixo usam os arquivos do template.

### Recursos e onde ver o exemplo

| Recurso | Função | Exemplo em |
|---|---|---|
| Figura com imagem SVG e fonte de terceiros | `#figura(..., source: [...])` | `capitulos/01-introducao.typ` |
| Captura de tela (PNG) e duas imagens numa figura | `#figura(image(...))`, `#figura(grid(...))` | `capitulos/05-desenvolvimento.typ` |
| Quadro (bordas fechadas, conteúdo textual) | `#quadro` | `capitulos/03-trabalhos-correlatos.typ`, `04-metodologia.typ`, `05-desenvolvimento.typ` |
| Tabela padrão IBGE lida de CSV; células mescladas; fonte personalizada | `#tabela` | `capitulos/06-resultados.typ` |
| Linha "Fonte" explícita | `source: myself`, `#fonte[...]` | `capitulos/06-resultados.typ` |
| Diagrama desenhado no texto e importado | `#diagram` (cetz) | `capitulos/04-metodologia.typ`, `assets/diagramas/arquitetura.typ` |
| Diagrama UML (PlantUML) e de classes gerado do código (sourcecraft) | `#figura(image(...))` | `capitulos/05-desenvolvimento.typ` |
| Gráficos de pizza e barras | `chart` (cetz-plot) | `capitulos/06-resultados.typ`, `assets/graficos/` |
| Código-fonte com arquivo externo; código inline; algoritmo | `#codigo`, `` `...` ``, `#algoritmo` | `capitulos/05-desenvolvimento.typ`, `pos-textuais/apendice-b-codigo-fonte.typ` |
| Equação numerada; equação com legenda; matemática inline | `#equacao`, `#figura-equacao`, `$...$` | `capitulos/04-metodologia.typ` |
| Citações indireta, narrativa, com página, múltiplas, direta curta e longa | `#cite`, `#prose`, `@chave`, `#citacao-curta`, `#citacao-longa` | `capitulos/02-referencial-teorico.typ` |
| Citação de citação (apud) | `#apud` | `capitulos/02-referencial-teorico.typ` |
| Siglas e glossário | `#abbrev`, `#gloss`, `#glossario` | `capitulos/01-introducao.typ`, `04-metodologia.typ`, `main.typ` |
| Lista não numerada; alíneas a), b), c) | `-`, `#set enum(numbering: "a)")` | `capitulos/01-introducao.typ`, `04-metodologia.typ` |
| Nota de rodapé; referência cruzada | `#footnote`, `@rótulo` | `capitulos/01-introducao.typ` |
| Apêndices, anexos e referências | `#apendice`, `#anexo`, `#references` | `main.typ`, `pos-textuais/` |
| Pré-textuais (ficha, errata, aprovação, dedicatória, resumo...) e listas automáticas | `template.with(...)` | `main.typ`, `pre-textuais/` |
| Caixas de orientação (apague ao escrever) | `#orientacao` | todos os capítulos |

### Figuras, tabelas, quadros

```typst
#figura(image("assets/imagens/logo.svg"), caption: [Logotipo IFBA]) <fig-logo>
#tabela(caption: [Métricas], columns: (1fr, 1fr), header: ([A], [B]), ..csv("data/resultados.csv")) <tab-metricas>
#quadro(([Critério], [Opção A], [Modelo], [Relacional]), caption: [Comparativo]) <quad-sgbd>

// Captura de tela (PNG/JPG) e duas imagens numa só figura:
#figura(image("assets/imagens/tela.png", width: 60%), caption: [Tela inicial]) <fig-tela>
#figura(grid(columns: 2, gutter: 2em, image("a.png"), image("b.png")), caption: [Login e cadastro])

// Linha "Fonte": sem source: sai "Elaborado pelo próprio autor (ano)";
// source: [Dados da pesquisa (2026)] para texto livre; source: myself explícito;
// #fonte[...] para uma linha avulsa fora de #figura.

// Referência cruzada:
Ver @fig-logo e @tab-metricas.
```

Alíneas (NBR 6024): `#[ #set enum(numbering: "a)") + item;  + último item. ]`

### Código e algoritmo

```typst
#codigo(lang: "java", caption: [Classe Estoque], filename: "Estoque.java", read("assets/codigos/Estoque.java")) <fig-codigo>
#algoritmo(read("assets/algoritmos/busca.alg"), caption: [Busca linear]) <alg-busca>
```

Ativos de exemplo: `assets/codigos/Estoque.java`, `assets/codigos/Produto.java` e `assets/algoritmos/busca.alg`. Requer `codly-habilitado: true` para syntax highlight.

### Equações e diagramas

```typst
#equacao[$ e^(i pi) + 1 = 0 $] <eq-euler>

// Equação com legenda ("Equação N – título"); o rótulo vai em label:
#figura-equacao(caption: [Identidade de Euler], label: <eq-euler-legenda>)[$ e^(i pi) + 1 = 0 $]
```

Diagramas e gráficos de exemplo: `assets/diagramas/arquitetura.typ`, `assets/diagramas/diagramauml.svg`, `assets/graficos/pizza.typ` e `assets/graficos/barras.typ`.

### Citações ABNT (NBR 10520:2023)

```typst
// Indireta parentética
A arquitetura é amplamente adotada #cite("newman2021").

// Indireta narrativa
Como afirma #prose("martin2008"), o código limpo é essencial.

// Com página
A modularização é defendida #cite("martin2008", supplement: [p. 42]).

// Múltiplas fontes
Estudos apontam convergência #cite("martin2008", "sommerville2011").

// Direta curta (até 3 linhas)
Segundo o autor, #citacao-curta[código limpo é legível] #cite("martin2008", supplement: [p. 42]).

// Direta longa (>3 linhas, recuo 4cm, 10pt)
#citacao-longa(autor: "Martin", ano: "2009", pagina: "42")[Texto longo...]

// Citação de citação (apud): só quando não teve acesso ao original.
// Autor e ano do original como texto; a chave é da obra consultada (só ela vai para as Referências).
#apud("Boehm", "1981", "sommerville2011", supplement: [p. 23])  // (BOEHM, 1981 apud SOMMERVILLE, 2011, p. 23)
#apud("Boehm", "1981", "sommerville2011", narrativo: true)     // Boehm (1981 apud SOMMERVILLE, 2011)

// Bibliografia no final do documento:
#references()
```

Fonte: `ifbasaj-tcc/bibliography.typ` (`cite`, `prose`, `apud`, `citacao-curta`, `citacao-longa`, `references`). O arquivo `referencias.bib` é lido pelo parser BibTeX do template; use `#references(title: "REFERÊNCIAS")` para imprimir as obras citadas.

### Abreviaturas, glossário, apêndices e anexos

```typst
O #abbrev("ifba", long: "Instituto Federal da Bahia") é referência.
O #abbrev("ifba") novamente dá só a sigla.
O termo #gloss("docker")[Plataforma de containers.] é central.

#glossario() // imprime glossário no local desejado

#apendice
= Roteiro de Entrevistas
Conteúdo do apêndice...

#anexo
= Portaria de Autorização
Conteúdo do anexo...
```

Fonte: `ifbasaj-tcc/gloss.typ` (`abbrev`, `gloss`, `lista-abreviaturas`, `glossario`), `ifbasaj-tcc/annexes.typ` (`apendice`, `anexo`).

## Compilação — digital vs impressão

```typst
#show: template.with(
  // ...
  versao-impressao: false, // digital (padrão)
  // versao-impressao: true, // impressão — margens ABNT para encadernação
)
```

- `versao-impressao: false` — margens para leitura digital.
- `versao-impressao: true` — margens ajustadas para impressão/encadernação.

Recompile após trocar: `typst compile main.typ` ou aguarde o preview do Tinymist.

## PDF automático no GitHub (Actions + Release)

O workflow `.github/workflows/pdf.yml` compila o `main.typ` com Typst 0.15.1 no GitHub:

- **push na `main`, pull request ou execução manual** (aba Actions → *PDF do TCC* → *Run workflow*):
  o PDF fica disponível em *Artifacts* na página da execução. Serve para conferir que o texto compila.
- **push de uma tag `v*`**: cria uma **Release** com o PDF anexado, com notas geradas a partir dos commits.

```powershell
git tag v0.1.0            # ex.: versão para a qualificação
git push origin v0.1.0
```

Tags com hífen (`v1.0.0-rc1`, `v0.2-banca`) são publicadas como pré-release. Se o TCC ficar em
`docs/`, num repositório com o código do projeto, altere `TCC_DIR` para `docs` no início do workflow.

## Estrutura de pastas

```
.
├── .github/workflows/pdf.yml # compila o PDF e publica Release em tags v*
├── main.typ                 # ← dados do trabalho + ordem dos includes (não tem texto)
├── referencias.bib          # exemplos de cada tipo BibTeX suportado
├── pre-textuais/            # resumo, abstract, dedicatória, agradecimentos, epígrafe, errata
├── capitulos/               # um arquivo por capítulo, com #orientacao[...] e exemplos
│   ├── 01-introducao.typ            # siglas, glossário, citações, nota de rodapé, objetivos
│   ├── 02-referencial-teorico.typ   # todas as formas de citação
│   ├── 03-trabalhos-correlatos.typ  # critérios, objetivo/solução/lacuna, quadro comparativo
│   ├── 04-metodologia.typ           # diagrama cetz, quadro de ferramentas, equações
│   ├── 05-desenvolvimento.typ       # requisitos, arquitetura, UML, sourcecraft, código, algoritmo
│   ├── 06-resultados.typ            # tabela CSV, tabela com células mescladas, gráficos
│   └── 07-consideracoes-finais.typ
├── pos-textuais/            # apêndices (material do aluno) e anexos (de terceiros)
├── data/resultados.csv
├── assets/                  # algoritmos, códigos, diagramas, gráficos, imagens, ficha
└── ifbasaj-tcc/             # biblioteca do template (não edite)
```

Cada capítulo importa a biblioteca com `#import "../ifbasaj-tcc/imports.typ": *` e usa caminhos
relativos ao próprio arquivo (`image("../assets/...")`). As caixas `#orientacao[...]` resumem o que
a seção DEVE / NÃO DEVE conter; apague-as ao escrever a seção.

### Estrutura obrigatória e regras de cada seção

A ordem dos capítulos e seções de `capitulos/` é a estrutura recomendada pelo curso: os títulos
podem ser adaptados ao tema, mas não a ordem nem o papel de cada seção. Exemplos que a
revisão confere sempre: a hipótese fica só na seção 1.3; os objetivos específicos são lista
**não numerada** (marcador `-`); os **trabalhos correlatos** são um capítulo próprio (3), entre o
referencial teórico e a metodologia, e cada trabalho traz objetivo, solução e lacuna.

As caixas de orientação de cada seção descrevem o que ela DEVE e NÃO DEVE conter; as issues que
o orientador abre no seu repositório explicam cada apontamento com o mesmo nível de detalhe. A
lista completa das regras e os roteiros das etapas de orientação (00 Concepção a 09 Defesa) estão
no repositório
[`orientador-claudio`](https://github.com/ifba-saj-ads-tcc/orientador-claudio):
[`normas/conteudo-por-secao.md`](https://github.com/ifba-saj-ads-tcc/orientador-claudio/blob/master/normas/conteudo-por-secao.md)
e [`etapas/`](https://github.com/ifba-saj-ads-tcc/orientador-claudio/tree/master/etapas).

### Editando um capítulo sozinho

Cada arquivo de `capitulos/` começa com:

```typst
#import "../ifbasaj-tcc/imports.typ": *
#show: capitulo.with(numero: 3)
```

Com isso, o capítulo pode ser aberto sozinho no preview de qualquer editor (VS Code, VSCodium,
typst.app): recebe o estilo ABNT, a numeração do capítulo (`numero`) e as citações de
`referencias.bib`. Dentro do `main.typ`, o `capitulo` não faz nada. No preview isolado:

- referências a rótulos de outros capítulos aparecem como ‹rótulo›, em vermelho;
- figuras e tabelas são numeradas a partir de 1, e a fonte automática mostra "(ano)";
- siglas já definidas em outro capítulo aparecem só como sigla.

O PDF final é sempre o do `main.typ`. Ao criar um capítulo novo, copie as duas linhas acima e
ajuste `numero`.

A raiz do projeto precisa ser a pasta do TCC (a que contém `main.typ`), porque os capítulos
usam caminhos `../`. No editor, abra a pasta do TCC (ou uma pasta que a contenha); na linha de
comando, passe a raiz:

```powershell
typst watch --root . capitulos/01-introducao.typ
```

## FAQ / Troubleshooting

| Problema | Causa | Solução |
|---|---|---|
| Erro de sintaxe ou incompatibilidade ao compilar | Versão diferente do compilador usado no projeto | Confira `typst --version` e compile com Typst `0.15.1`. |
| Preview não atualiza | Tinymist não instalado | Instale `myriad-dreamin.tinymist` e recarregue o VS Code. |
| Bibliografia não aparece | `bibliografia: none`, `.bib` vazio ou nenhuma citação no texto | Passe `bibliografia: read("referencias.bib")`, cite as obras no texto e adicione `#references()` no final. |
| Erros `label <...> does not exist` ou `cannot reference heading without numbering` ao editar um capítulo | Falta `#show: capitulo.with(numero: N)` no topo do capítulo | Adicione a linha logo após o `#import` — ver [Editando um capítulo sozinho](#editando-um-capítulo-sozinho). |
| Erro `path ... would escape the project root` | A raiz do projeto é a pasta `capitulos/` | Abra no editor a pasta do TCC, ou use `--root .` na linha de comando. |
| Referência `@fig-...` aparece em vermelho | Label não existe ou typo | Verifique `<fig-...>` e `@fig-...` com mesmo nome. |
| Ficha catalográfica em branco | Caminho errado ou PDF de exemplo | Use sua ficha catalográfica final no parâmetro `ficha-catalografica`; o arquivo `assets/ficha-exemplo.pdf` é apenas ilustrativo. |
| Erro `codly` | `codly-habilitado: false` com `#codigo` | `codly-habilitado` agora é `true` por padrão; se desabilitou, reative. |

---

Dúvidas sobre ABNT? Consulte as NBRs e os comentários em `ifbasaj-tcc/*.typ` e `main.typ`.
