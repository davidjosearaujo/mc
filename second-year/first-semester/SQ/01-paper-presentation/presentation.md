---
marp: true
class: lead
size: 4K
style: |
    .columns {
       display: grid;
       grid-template-columns: repeat(2, minmax(0, 1fr));
       gap: 1rem;
    }

    p {
       text-align: justify;
    }

    img[alt~="center"] {
      display: block;
      margin: 0 auto;
    }
---

<!-- footer: 20th of December 2024 | _davidaraujo@ua.pt_-->

![height:100px](./images/deti-logo.png) ![height:100px](./images/Marca-UA-Complementar-PRETO.png)

## S. Sakauchi, **_"Toward creation of a system architecture for quantum computers"_**, NTT Technical Review, vol. 21, no. 11, pp. 1-21, Nov. 2023.

### Quantum Security Course - _Paper Presentation_

David Araújo (93444)

<!--
Este paper serve como um guia para os objetivos do NTT Research Group relativamente ao desenvolvimento de arquiteturas para sistemas quântico, focados em aplicações que requeiram processamento ultra rápido e de larga escala.
-->

---

<!-- paginate: true -->
<!-- header: __Toward creation of a system architecture for quantum computers__ | Quantum Security Course - _Paper Presentation_ -->
<!-- footer: '![height:50px](./images/deti-logo.png) ![height:50px](./images/Marca-UA-Complementar-PRETO.png)' -->

# Innovative Optical and Wireless Network

**Innovative Optical and Wireless Network** consists in the next-generation network and computing infrastructure concept

This will require a new computing infrastructure to support **Digital Twin Computing**, which requires processing huge amounts of data at unprecedented speeds

<!--
Central to this is the All-Photonics Network, which uses light for ultra-fast, high-capacity communication.

Another key concept is Digital Twin Computing, which merges the real and digital worlds to predict future scenarios with unprecedented accuracy.

By connecting and optimizing diverse ICT resources, IOWN envisions enabling breakthrough applications and services that surpass the limits of current technology.

~~~~

Um dos objetivos do NTT é em criar a nova geração de uma rede de computadores quânticos com base em numa rede apenas e completamente baseada em fotónica, que permite comunicações ultra rápidas e com enorme largura de banda

Isto é fundamental para tecnologias emergentes, como Digital Twin Computing <explicar digital twin computing>
-->

---

# Current State of Quantum Computing

Quantum computers use _qubits_ to solve complex problems **faster**, created with methods like **superconductivity**, **photons** and **ion trapping**.

**Ising machines solve optimization problems** using the Ising model and are already commercialized, though they **have fewer applications**.

_Qubit_ computers have more potential, but **Ising machines are more practical**.

<!--
Computadores quânticos usam qubits para resolver problemas complexos de forma mais rapida, e esses qubits podem ser gerados com métodos como super-condutividade, fotões e ion trapping.

No entanto, computadores de larga escala, tolerantes a errro, conhecidos com FTOC, que sejam capazes de corrigir erros em tempo real, ainda não são práticos
-->

---

# Ising Machines

<div class="columns">

<div>

**Energy Minimization**: Finds the lowest-energy spin configuration to solve optimization problems.

**Spin Dynamics**: Uses interactions between spins and external fields to model the problem and update states.

</div>

<div>

**Implementation Flexibility**: Can be built with quantum annealers, optical circuits, or classical algorithms.

**Real-World Applications**: Used in logistics, finance, and scheduling for efficient problem-solving.

</div>

</div>

<!--
Altenativas como máquinas de Ising, são mais especializadas em resolver problemas combinatorios de otimização que tipicamente demoram muito tempo em computadores clássicos

Elas alcançam isto ao representar os problemas como uma rede de variaveis binárias, -1 ou +1, os spins, ligadas por interações, e o objetivo é minimizar a energia total do sistema.

Alcança isso, ao ajustar os spins baseado na força das interações e campos externos, convergingo para uma configuração de baixa energia que representa a solução ideal.

Como não utilizam qubits, podem ser implementadas com circuitos oticos, algoritmos classicos, entre outros
-->

---

# NTT's Research Focus Areas

NTT is developing Ising machines, NISQ computers, and **working toward fault-tolerant quantum computers** (FTQCs).

The LASOLV™ Ising machine uses **light** for operations, with ongoing research into quantum computing hardware like **optical and superconducting systems**.

NTT is bridging the gap to FTQCs by researching "early-FTQC" technology, aiming to **create practical computing infrastructure**.

<!--
O grupo NTT para ja, a nivel de hardware, desenvolveu uma máquina de Ising que usa luz e super-condutores para as suas operações.

A nível de software, o grupo quer melhorar a performance da correção de erros, assim como tornar a infraestrutura de desenvolvimento mais prática.
-->

---

# Challenges in Quantum Computing System Architecture

## Challenge 1: Difficulty in Application Development

<div class="columns">

<div>

Processing **general problems** with quantum computers requires complex algorithms to **translate them into a form compatible with quantum systems**.

</div>

<div>

![center](./images/challenges-solutions-01.png)

</div>

</div>

<!--
Computadores quanticos necessitam de algoritmos complexos, e atualmente torna dificil traduzir problemas gerais em expressões que possam ser interpretadas por computadores quanticos.

Isto cria uma barreira à adoção da computação quântica por parte dos developers.
-->

---

## Challenge 2: Limited Applicability

<div class="columns">

<div>

Quantum computers excel as **accelerators for specific tasks** but rely on seamless integration with classical systems to achieve their full potential.

**Designing hybrid systems that balance quantum and classical computing** is key to maximizing efficiency and functionality

</div>

<div>

![center](./images/challenges-solutions-02.png)

</div>

</div>

<!--
Apesar de os computadores quânticos tirarem vatagens da superposição para poder processar multiplos inputs simultaneamente, ainda não são rapidos o suficiente para substituir os computadores classicos em todas as vertentes
-->

---

## Challenge 3: Scalability Issues

<div class="columns">

<div>

To achieve useful quantum computation, increased scalability is essential.

The **current quantum computing hardware is still lacking the number of *qubits*** required for meaningful operations, and the *qubits* that are available are **highly susceptible to noise**.

Additional *qubits* are needed to correct errors and enable reliable operations.

</div>

<div>

![center](./images/challenges-solutions-03.png)

</div>

</div>

<!--
Para atingir niveis de computações que possam competir com o dos computadores classicos, escalabilidade é essencial

Atualmente o computadores quântico ainda não possuem qubits em número suficiente para que possam realizar operações significativas em comparação com os classicos

Este limite nos qubits também limita seriamente a precisão das operações, uma vez que seria necessária uma margem adicional no numero de qubits para que pudesse ser feita uma correção de erros eficaz, uma vez que os qubit para alem de poucos, são muito susceptiveis a ruido.
-->

---

# NTT's Approach to Address Challenges

<div class="columns">

<div>

## Addressing Challenge 1

We’re **abstracting quantum hardware with libraries and SDKs** to simplify development, enabling **optimized processing** across quantum and classical resources through instruction sets and compilers.

</div>

<div>

![width:300px center](./images/solutions-02.png)

</div>

</div>

<!--
A forma como o NTT pretende resolver o primeiro desafio é desenvolver livrarias e SDKs que permitam abstrair o hardware utilizado de forma a simplificar o desenvolvimento

Isto irá permitir também que sejam desenvolvidos novos instructions set, compiladores e linguagem de alto nível que otimizem o desenvolvimento de software mais complexo e capaz de tirar proveito da tecnologia quântica
-->

---

<div class="columns">

<div>

## Addressing Challenge 2

Creating **system architectures that seamlessly combine the two**, distributing processing efficiently.

Enabling **optimized task allocation**

</div>

<div>

![width:300px center](./images/solutions-03.png)

</div>

</div>

<!--
Uma vez que os computadores quânticos ainda só funcionam como aceleradores de funções especificas, desenvolver sistemas operativos distribuidos que permitam integrar computadores clássicos e quânticos é fundamental.

Isto também facilitaria a alocação de tarefas entre os dois sistemas de forma mais eficiente
-->

---

<div class="columns">

<div>

## Addressing Challenge 3

Enhancing quantum hardware **utility through software** by integrating high-precision, high-speed, compact technologies with advanced error-suppression and correction methods.

</div>

<div>

![width:300px center](./images/solutions-04.png)

</div>

</div>

<!--
Finalmente, o NTT também procura melhorar a utilidade do hardware existente ao melhorar a integração deste com software, tornando-o capaz de maior precisão, mais rapido e como melhor capacidade de correção e supressão de erros
-->

---

# Future Prospects and Conclusion

<div class="columns">

<div>

Quantum computers offer ultra-fast solutions to problems beyond classical limits. NTT is developing architectures from Ising machines to NISQ computers and FTQCs.

</div>

<div>

![center](./images/position-map.png)

</div>

</div>

<!--
Quantum computers offer unprecedented speed for solving complex problems beyond classical capabilities. 

NTT Computer and Data Science Laboratories is developing architectures that span practical Ising machines to NISQ and FTQC systems.

While Ising machines are already closer to real-world application, further research is needed for the broader capabilities of NISQ and FTQCs.

These efforts lay the groundwork for transformative quantum computing technologies.
-->

---

# Questions ?
