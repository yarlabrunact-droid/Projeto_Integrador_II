# Eu Não Tô Bem — Sistema Inteligente de Prevenção da Sobrecarga Estudantil

## Sobre o projeto

O **Eu Não Tô Bem** é um protótipo de sistema desenvolvido com o objetivo de auxiliar estudantes no acompanhamento de sua rotina acadêmica e na identificação preventiva de períodos de maior concentração de atividades.

A proposta é analisar informações da rotina acadêmica, como quantidade de atividades, prazos, horas estimadas e prioridades, para apresentar um indicador de carga acadêmica e auxiliar o estudante na organização de seus compromissos.

O sistema possui caráter preventivo e educacional. Ele não realiza diagnóstico médico ou psicológico e não substitui profissionais da área da educação ou da saúde.

---

## Problema

A rotina acadêmica pode envolver diversas atividades, trabalhos, provas, exercícios e outros compromissos com prazos próximos.

Quando várias demandas ficam concentradas em um mesmo período, o estudante pode ter dificuldades para organizar seu tempo e acompanhar todas as atividades.

O projeto busca apresentar uma solução tecnológica que permita visualizar essa concentração de atividades e auxiliar o estudante na organização de sua rotina.

---

## Objetivo

Desenvolver um sistema capaz de auxiliar na identificação preventiva de períodos de maior carga acadêmica, permitindo que estudantes acompanhem suas atividades, visualizem sua carga de trabalho e recebam sugestões de organização.

Além disso, o projeto propõe a disponibilização de informações institucionais de forma agregada e anônima, sem exposição individual dos estudantes.

---

## Público-alvo

O sistema é destinado principalmente a:

- Estudantes;
- Professores;
- Coordenação pedagógica;
- Instituições de ensino.

---

## Principais funcionalidades

### Cadastro e Login

Permite o acesso do usuário ao sistema por meio das telas de cadastro e login.

### Cadastro de Atividades

Permite registrar atividades acadêmicas informando:

- Nome da atividade;
- Data ou prazo;
- Tipo;
- Quantidade de horas estimadas;
- Prioridade.

### Calendário Acadêmico

Apresenta as atividades cadastradas de acordo com seus respectivos prazos, facilitando a visualização da rotina acadêmica.

### Indicador de Carga Acadêmica

O sistema apresenta um indicador que considera a quantidade e a concentração das atividades cadastradas.

A carga pode ser apresentada em diferentes níveis, permitindo que o estudante visualize quando sua rotina apresenta maior concentração de demandas.

### Identificação de Períodos Críticos

O sistema auxilia na identificação de períodos em que existe uma concentração maior de atividades acadêmicas.

### Alertas

Apresenta alertas quando a carga acadêmica atinge níveis elevados, chamando a atenção do estudante para períodos que exigem maior organização.

### Sugestões de Organização

Apresenta orientações relacionadas à organização das atividades e da rotina acadêmica.

### Área de Apoio

Disponibiliza informações e orientações relacionadas à organização da rotina e à busca de apoio quando necessário.

### Painel Institucional

Apresenta informações gerais e agregadas que podem auxiliar instituições de ensino na identificação de padrões relacionados à carga acadêmica.

Os dados apresentados nesse ambiente não devem expor estudantes individualmente.

### Dados Anônimos

A proposta institucional utiliza dados de maneira agrupada e anônima, preservando a identidade dos estudantes.

---

## Requisitos funcionais

O projeto foi estruturado considerando os seguintes requisitos funcionais:

- **RF01 — Cadastro e Login:** permitir cadastro e acesso dos usuários;
- **RF02 — Cadastro de Atividades:** permitir o registro de atividades acadêmicas;
- **RF03 — Calendário Acadêmico:** permitir a visualização dos prazos e atividades;
- **RF04 — Registro da Rotina:** permitir o registro de informações relacionadas à rotina acadêmica;
- **RF05 — Indicador de Carga Acadêmica:** apresentar um indicador da carga de atividades;
- **RF06 — Identificação de Períodos Críticos:** identificar períodos com maior concentração de atividades;
- **RF07 — Previsão de Alta Carga:** auxiliar na identificação antecipada de períodos de maior carga;
- **RF08 — Alertas:** apresentar alertas relacionados à carga acadêmica;
- **RF09 — Sugestões de Organização:** apresentar sugestões para organização da rotina;
- **RF10 — Histórico:** possibilitar o acompanhamento das informações ao longo do tempo;
- **RF11 — Painel Institucional:** disponibilizar informações agregadas para instituições;
- **RF12 — Dados Anônimos:** garantir que os dados institucionais sejam apresentados de forma agrupada e anônima;
- **RF13 — Identificação de Padrões:** possibilitar a identificação de padrões relacionados à concentração de atividades;
- **RF14 — Área de Apoio:** disponibilizar informações e orientações de apoio.

---

## Regras de negócio

### RN01 — Carga acadêmica

O indicador de carga acadêmica deve considerar a quantidade e a concentração das atividades cadastradas.

### RN02 — Períodos críticos

A identificação de períodos críticos deve utilizar critérios definidos pela equipe do projeto.

### RN03 — Dados institucionais

As informações destinadas à instituição devem ser apresentadas de forma agregada e anônima.

### RN04 — Não realização de diagnóstico

O sistema não deve realizar diagnóstico médico ou psicológico.

### RN05 — Uso necessário dos dados

Devem ser utilizadas somente as informações necessárias para o funcionamento das funcionalidades propostas.

---

## Requisitos não funcionais

O sistema considera os seguintes requisitos não funcionais:

- Facilidade de utilização;
- Interface responsiva;
- Segurança;
- Privacidade;
- Controle de acesso;
- Compatibilidade com diferentes dispositivos e navegadores;
- Transparência sobre a utilização dos dados.

---

## Tecnologias utilizadas

O protótipo foi desenvolvido utilizando:

- **Flutter** — framework utilizado para desenvolvimento da aplicação;
- **Dart** — linguagem de programação utilizada pelo Flutter;
- **Material Design 3** — sistema de componentes e identidade visual da interface;
- **Visual Studio Code** — ambiente utilizado para desenvolvimento;
- **Android Studio** — utilizado para configuração e suporte ao ambiente Android;
- **GitHub** — utilizado para versionamento, organização e documentação do projeto.

---

## Como executar o projeto

### Pré-requisitos

Para executar o projeto, é necessário ter o Flutter instalado e configurado no computador.

Também é recomendado possuir o Visual Studio Code ou outro ambiente compatível com Flutter.

### Instalar as dependências

Abra o terminal dentro da pasta do projeto e execute:

```bash
flutter pub get
