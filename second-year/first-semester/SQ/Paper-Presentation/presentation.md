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
---

![height:100px](./images/deti-logo.png) ![height:100px](./images/Marca-UA-Complementar-PRETO.png)

## Ali, S., Saharudin, S. & Wahiddin, M. R. (2009). **Quantum Key Distribution Using Decoy State Protocol**. American Journal of Engineering and Applied Sciences, 2(4), 694-698.

### Quantum Security Course - _Paper Presentation_

David Araújo (93444)

<!-- footer: 25th of October 2024 -->

<!--
- Experimental demonstration of decoy state quantum key distribution (QKD)

- Advantages of using decoy states to improve the security and performance of QKD systems, particularly in the presence of multi-photon pulses.

- By making simple modifications to a commercial QKD system, it is possible to achieve significantly higher key generation rates and longer distances.
-->

---

<!-- paginate: true -->
<!-- header: __Quantum Key Distribution Using Decoy State Protocol__ | Quantum Security Course - _Paper Presentation_-->
<!-- footer: '![height:50px](./images/deti-logo.png) ![height:50px](./images/Marca-UA-Complementar-PRETO.png)' -->

# Context and Background

<div class="columns">

<div>

Quantum Key Distribution (QKD) can help two remote parties to set up the secure key by **non-cloning theorem**.

In theory, this ensures that these **states cannot be perfectly copied**, providing a layer of security against eavesdroppers.

</div>

<div>

![BB84](./images/BB84-protocol-basic-scheme.png)

</div>

</div>

---

# Threats and Limitations

In a Photon-Number Splitting (PNS) attack, an eavesdropper (Eve) targets multi-photon pulses.

These can be split without disturbing the transmission, allowing Eve to intercept and retain one or more photons while letting the rest pass to Bob undetected.

---

# Motivation for Decoy States

Hwang specifically proposed to use a decoy pulses that are **intentionally designed to have an intensity similar to single-photon states** but with slight variability.

<!--
By doing so, the system can detect discrepancies in photon statistics that would indicate a Photon-Number Splitting (PNS) attack. This strategy helps differentiate genuine signal states from decoy states, ensuring that any eavesdropping attempts are revealed through inconsistencies in detection rates.
-->

The decoy states help detect and mitigate PNS attacks by **analyzing discrepancies in photon detection rates**, while the GLLP security proof **ensures that the overall system remains robust** against potential vulnerabilities in realistic settings.

<!--
The decoy states help detect and mitigate PNS attacks by analyzing discrepancies in photon detection rates, while the GLLP security proof ensures that the overall system remains robust against potential vulnerabilities in realistic settings. This combination improves both the security level and the key generation rate of QKD systems.

Entanglement Distillation Approach: This is a method used to strengthen entangled quantum states shared between two parties. By processing noisy or partially entangled states, Alice and Bob can create a smaller set of high-fidelity entangled pairs, boosting the security and reliability of their key exchange.

GLLP: The GLLP framework extends QKD security analysis to practical systems that use weak coherent states instead of ideal single-photon sources. It accounts for the imperfections in real-world implementations and provides a security proof that considers multi-photon emissions and realistic device imperfections.
-->




---

# Key Generation Rate in QKD

<div class="columns">

<div>

How efficiently does a QKD system produces secure keys?

Combining **signal states**, carrying most of the secret bits, with **weak and Vacuum states**, to detect eavesdropping, improves QKD's key generation rate while maintaining high security.

</div>

<div>

$$R \geq q \left\{ Q_\mu f(E_{mu}) H_2 (E_{mu}) + Q_1 [ 1 - H_2 (e_1) ] \right\} $$

![width:600px](./images/Screenshot%20from%202024-11-03%2021-39-17.png)

</div>

</div>

---

# Real-life Implementation

---

# Detection Mechanism

---

# Mathematical/Algorithmic Framework

---

# Key Findings

---

# Comparative Analysis

---

# Practical Implications


