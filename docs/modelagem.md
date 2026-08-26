# Relatório de Arquitetura e Modelagem

## 1. Visão Geral
O projeto **Eu Não Tô Bem** foi pensado como uma plataforma para ajudar a identificar e prevenir situações de sobrecarga acadêmica entre estudantes.
A ideia é que o sistema ajude o estudante a acompanhar sua rotina e sua carga de atividades, enquanto a instituição possa observar, de forma geral e preservando a privacidade, os períodos em que a turma apresenta maior sobrecarga.

## 2. Usuários do Sistema
O sistema possui dois tipos principais de usuários:

### Estudante
O estudante poderá acessar a plataforma por meio do login e registrar informações relacionadas à sua rotina acadêmica.
A partir dessas informações, o sistema poderá analisar a carga de atividades e identificar possíveis períodos de sobrecarga, apresentando alertas e orientações ao estudante.

### Funcionário
O funcionário poderá acessar um painel com informações gerais da turma.
Inicialmente, os dados serão apresentados de forma agrupada e anonimizada, permitindo identificar períodos de maior sobrecarga e possíveis necessidades de prevenção para a turma.
Em situações de alerta elevado, poderá existir um acesso restrito à identificação do estudante, para que seja possível realizar um acompanhamento institucional adequado.

## 3. Fluxo da Solução
O fluxo começa com o **login**, no qual o sistema identifica se o usuário é um estudante ou funcionário.
No caso do estudante, ele poderá registrar informações relacionadas às suas atividades e rotina acadêmica. Essas informações serão utilizadas pelo sistema para analisar sua carga e identificar possíveis períodos de sobrecarga.
No caso do funcionário, ele terá acesso ao painel da turma e poderá visualizar dados agrupados e anonimizados. A partir dessas informações, será possível identificar a necessidade de ações preventivas para a turma.

## 4. Identificação de Sobrecarga
Uma das principais funções da solução é analisar as informações registradas para identificar períodos em que exista uma concentração elevada de atividades acadêmicas.
Quando uma situação de atenção for identificada, o sistema poderá apresentar um alerta ao estudante.
Também será possível analisar os dados da turma para identificar períodos que possam exigir ações preventivas por parte da instituição.

## 5. Privacidade
A privacidade dos estudantes é uma parte importante da proposta.
Os funcionários não terão acesso livre às informações individuais dos estudantes. Os dados da turma serão apresentados de forma agrupada e anonimizada.
Em casos de alerta elevado, poderá haver um acesso restrito à identificação do estudante, destinado ao acompanhamento institucional e realizado somente por usuários autorizados.

## 6. Modelagem
A modelagem inicial da solução foi desenvolvida utilizando o **Draw.io**.
O fluxograma representa os principais caminhos do sistema, mostrando a interação entre estudantes, funcionários e a plataforma.
A modelagem também apresenta a divisão entre o acompanhamento individual do estudante e o acompanhamento geral da turma.

## 7. Fluxo Principal
De forma geral, o funcionamento da solução pode ser representado da seguinte maneira:
**Login → Identificação do usuário → Acesso às funcionalidades → Registro e análise das informações → Identificação de possíveis períodos de sobrecarga → Alertas e ações preventivas.**
Para os funcionários, o fluxo também considera a análise dos dados agrupados da turma e a identificação de necessidades de prevenção.

## 8. Objetivo da Modelagem
A modelagem foi feita para organizar melhor a ideia do sistema antes do desenvolvimento.
Com o fluxograma, foi possível visualizar os principais usuários, suas ações e a forma como as informações serão utilizadas dentro da plataforma.
A proposta é que essa modelagem sirva como base para as próximas etapas de desenvolvimento do projeto.
