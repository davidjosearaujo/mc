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

### Quantum Security Course - _Paper Presentatin_

David Araújo (93444)

<!-- footer: 25th of April 2024 -->

---

<!-- paginate: true -->
<!-- header: __Quantum Key Distribution Using Decoy State Protocol__ | Quantum Security Course - _Paper Presentation_ -->
<!-- footer: '![height:50px](./images/deti-logo.png) ![height:50px](./images/Marca-UA-Complementar-PRETO.png)' -->

# Problem Statement

Real-life QKD experiment rely on **faint lase pulses** which leads easier **multi-photon production** and **channel loss**.

Vulnerable to **eavesdropping** via **_Photon Number Splitting (PNS)_** attacks.

---

# Proposed Approach

**_Weak decoy_** and **_vaccum state_** states.

<!--
In standard QKD, weak coherent pulses (WCPs) are used, but these can sometimes contain more than one photon, making them vulnerable to attacks. The decoy-state method helps detect and prevent such attacks by introducing decoy pulses, which are different from the normal signal pulses.

These pulses have a lower average photon number compared to the normal signal pulses. They are used to detect whether an eavesdropper is selectively attacking multi-photon pulses, as the statistics of photon detection between signal and weak decoy states would change in the presence of an attack.
-->

Leveraging the **_Decoy State Protocol_** to both **deceive and detect** attackers.

<!--
The key principle behind differentiating single-photon and multi-photon pulses in the Decoy State Protocol is the use of multiple intensity levels (signal and decoy states) during transmission.

The Decoy State Protocol introduces decoy states with different intensities (photon number distributions) than the primary signal states. By randomly interleaving these decoy pulses with signal pulses, the receiver can analyze the statistics of the detected pulses to estimate the channel loss and error rates for each intensity. If an eavesdropper were performing a PNS attack, the detected statistics for decoy states would deviate noticeably from expected values, revealing the presence of an eavesdropper.
-->

---

# Results & Impact

Implementation via a polarization independent **VOA (variable optical attenuator**).

Improved performance with **higher key generation rate** and **longer distance** transmission.

<!--
NOTES

Preliminary presentation structure

You could structure your three slides like this:
    1. Problem Statement: Briefly explain the challenge in Quantum Key Distribution, emphasizing the threat of photon-number splitting (PNS) attacks and the need for secure and efficient key exchange protocols.

    2. Proposed Approach: Summarize the Decoy State Protocol, focusing on how it enhances QKD security by introducing decoy states to detect eavesdroppers. Mention the key principle behind differentiating single-photon and multi-photon pulses.

    3. Results & Impact: Present the key findings, such as improvements in key generation rate and security, and conclude with the implications for the future of secure communications.
-->

<!--
Final presentation structure

1. Problem Statement:
    - Context and Background: Explain the basics of Quantum Key Distribution and its importance in secure communication.
    - Threats and Limitations: Go into details about PNS attacks and how traditional QKD is vulnerable to these.
    - Motivation for Decoy States: Why decoy states are a potential solution, setting up the transition to the approach.

2. Proposed Approach:
    - Concept of Decoy States: Describe what decoy states are and how they differ from signal states.
    - Detection Mechanism: Explain how the protocol uses decoy states to identify and prevent eavesdropping attempts.
    - Mathematical/Algorithmic Framework: Briefly touch on the key mathematical or algorithmic techniques used in their protocol.

3. Results & Impact:
    - Key Findings: Highlight the quantitative and qualitative improvements in security and key generation rates.
    - Comparative Analysis: Compare their protocol’s performance with other QKD protocols.
    - Practical Implications: Discuss real-world applicability and how this research advances the field of secure quantum communications.
-->
