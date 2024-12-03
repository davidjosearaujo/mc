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

![height:100px](./images/deti-logo.png) ![height:100px](./images/Marca-UA-Complementar-PRETO.png)

## S. Sakauchi, **_"Toward creation of a system architecture for quantum computers"_**, NTT Technical Review, vol. 21, no. 11, pp. 1-21, Nov. 2023.

### Quantum Security Course - _Paper Presentation_ - PREVIEW

David Araújo (93444)

<!-- footer: 25th of October 2024 -->

<!--
This paper discusses the development of quantum computers and their potential role in supporting the Innovative Optical and Wireless Network (IOWN) concept.
-->

---

<!-- paginate: true -->
<!-- header: __Quantum Key Distribution Using Decoy State Protocol__ | Quantum Security Course - _Paper Presentation_ - PREVIEW-->
<!-- footer: '![height:50px](./images/deti-logo.png) ![height:50px](./images/Marca-UA-Complementar-PRETO.png)' -->

# Innovative Optical and Wireless Network

**Innovative Optical and Wireless Network** consists in the next-generation network and computing infrastructure concept

This will require a new computing infrastructure to support **Digital Twin Computing**, which requires processing huge amounts of data at unprecedented speeds

---

# Current State of Quantum Computing

<!--
-  Quantum computers using qubits
-  Ising machines for combinatorial optimization problems
-  Limited number of qubits
-  Error generation due to noise
-  Need for error correction
-->

Quantum computers use _qubits_ to solve complex problems **faster**, created with methods like **superconductivity**, **photons** and **ion trapping**.

**Ising machines** solve optimization problems using the Ising model and are already commercialized, though they have fewer applications.

_Qubit_ computers have more potential, but **Ising machines are more practical**.

<!--
NOTES
Number or qubits is currently limited. Current quantum computers lack scale and precision. Many companies and research institutes are developing multi-bit systems. A large-scale, fault-tolerant quantum computer (FTQC), capable of error correction during calculations like prime factorization, is not yet in practical use.

Ising machines specialize in solving combinatorial optimization problems that are time-consuming for classical computers. They use the Ising model, a statistical-mechanics model representing magnetic material properties. Unlike qubit-based quantum computers, Ising machines have limited applications but are already commercialized and lead in practical use.
-->

---

# NTT's Research Focus Areas

<!--
-  LASOLVTM computing system (Ising machine)
-  Optical quantum systems and superconducting systems
-  Error correction and suppression methods
-->

NTT is developing Ising machines, NISQ computers, and working toward fault-tolerant quantum computers (FTQCs).

The LASOLV™ Ising machine uses light for operations, with ongoing research into quantum computing hardware like optical and superconducting systems.

NTT is bridging the gap to FTQCs by researching "early-FTQC" technology, aiming to create practical computing infrastructure.

<!--
At NTT, they are advancing research in Ising machines and quantum computers, including NISQ computers and FTQCs.

They developed the LASOLV™ Ising machine, which uses light for operations, and are exploring its applications.

For quantum hardware, they are researching optical and superconducting systems. In software, their focus is on improving error correction and suppression for better performance.

Their goal is to bridge the gap from NISQ computers to FTQCs by developing "early-FTQC" technology and building practical computing infrastructure, as FTQCs can solve a broader range of problems but are more difficult to implement.
-->

---

# Challenges in Quantum Computing System Architecture

## Challenge 1: Difficulty in Application Development

<div class="columns">

<div>

Processing general problems with quantum computers requires complex algorithms to translate them into a form compatible with quantum systems.

</div>

<div>

![center](./images/challenges-solutions-01.png)

</div>

</div>

<!--
Quantum computers require specialized algorithms, making it necessary to study how general problems can be translated into complex quantum algorithms suitable for these systems. The reliance on quantum mechanics creates a high barrier for general application developers.

To address this, efforts are focused on abstracting quantum hardware into libraries and SDKs, similar to how early classical computers evolved from assembly languages to higher-level tools. The goal is to develop instruction sets, intermediate representations, programming languages, and compilers that optimize processing for different types of quantum hardware.
-->

---

## Challenge 2: Limited Applicability

<div class="columns">

<div>

Quantum computers excel as accelerators for specific tasks but rely on seamless integration with classical systems to achieve their full potential. Designing hybrid systems that balance quantum and classical computing is key to maximizing efficiency and functionality

</div>

<div>

![center](./images/challenges-solutions-02.png)

</div>

</div>

<!--
Quantum computers leverage superposition to process many inputs simultaneously, offering dramatic speed improvements for specific tasks like prime factorization. However, they are not fast enough to replace all classical computing operations. Instead, they function as accelerators. To maximize their advantage, it’s essential to design systems that integrate quantum and classical computing for optimal performance.
-->

---

## Challenge 3: Scalability Issues

<div class="columns">

<div>

To perform meaningful operations, quantum computers need larger _qubit_ systems, enhanced noise resistance, and more efficient circuits to reduce _qubit_ requirements. Progress also depends on improving _qubit_ precision, scalability through inter-hardware communication, and advanced error correction techniques

</div>

<div>

![center](./images/challenges-solutions-03.png)

</div>

</div>

<!--
Quantum computers have yet to achieve quantum transcendence, primarily due to insufficient qubits, noise susceptibility, and error correction needs. Overcoming this requires scaling up qubits, improving operational accuracy, and optimizing circuits to minimize qubit use. Efforts focus on advancing both hardware, for better qubits, and software, to enhance performance, scalability, and error management. These innovations aim to unlock the full potential of quantum computing systems.
-->

---

# NTT's Approach to Address Challenges

## Addressing Challenge 1

<!--
-  Abstracting quantum hardware components
-  Developing specialized instruction sets and compilers
-->

Abstract the parts of quantum hardware that are used by application developers with libraries, SDKs, etc. to facilitate the development of applications that use quantum computers.

Develop a language and compiler that handles quantum hardware and classical hardware and enables optimized processing by using the characteristics of various computing resources.

---

## Addressing Challenge 2

<!--
-  Investigating tightly coupled system architectures
-  Developing distributed operating systems
-->

Develop an operating system that appropriately distributes processing by combining quantum hardware (i.e., an “accelerator” that demonstrates high speed in a specific domain) and classical hardware (which is versatile) in the right place at the right time.

---

## Addressing Challenge 3

<!--
-  Improving qubit scalability through hardware research
-  Enhancing software capabilities for error suppression and tolerance
-->

Improve the usefulness of quantum hardware through the power of software by establishing and implementing high-precision, high-speed, and compact integration technology and superior error-suppression and error-correction theory in combination with quantum hardware.

---

# Future Prospects and Conclusion

<!--
-  Potential for ultra-high-speed problem-solving
-  Ongoing development from Ising machines to NISQ and FTQCs
-->

---

# Questions ?
