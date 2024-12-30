### Introduction

Hello. Today, I’ll talk about my paper called "Authenticating Legacy IoT Devices Without SIM Cards in 5G Networks Using Federated Identity." This paper looks at how to securely connect older IoT devices to 5G networks, even though they don’t have modern features like SIM cards. The proposed solution is Federated Identity, or FID, which allows devices to log in once and access multiple services securely. Let’s break it down.

---

### 5G Networks and Legacy IoT Devices

5G networks are amazing because they connect many devices quickly and reliably. This is great for industries and smart cities. However, older IoT devices struggle to connect because they don’t support modern methods like SIM cards. Without these, they’re easier to hack and harder to integrate. Some solutions, like EAP-TLS, exist but need more advanced hardware or software than many older devices have.

!!! NEXT SLIDE !!!

Federated Identity helps by letting devices use one set of credentials to access various services, making authentication easier and safer. It’s especially important for older devices that weren’t built with modern security in mind.

---

### Challenges in IoT Authentication

The rapid growth of connected devices makes security harder to manage. Older devices often lack strong protections, making them weak points in the network. Traditional methods also struggle to handle the sheer number of devices in 5G. Automated systems like Public Key Infrastructure, or PKI, help manage authentication more efficiently. However, many older devices lack the power or features to support these systems, leaving them vulnerable.

Another challenge is scalability. Managing millions of devices in a 5G ecosystem requires efficient, automated processes. Federated Identity offers a solution by centralizing and streamlining authentication across networks.

---

### Federated Identity for Legacy IoT Authentication

Federated Identity solves some of these issues. It provides a single login system, or SSO, which could support devices without SIM cards, also refereed to as non-3GPP capable devices, and works with existing networks. 

!!! NEXT SLIDE !!!

One protocol discussed in the paper is the **NS-FId Protocol**. This protocol adapts Federated Identity to secure older devices without needing major hardware updates. It simplifies authentication, allowing devices to access multiple services with a single set of credentials. This improves user experience and security while reducing the burden of managing proprietary identity systems.

Another key feature is **Multi-Level Authentication**, which provides layered security. This ensures appropriate security measures are applied at every level of the network, safeguarding devices and data.

Integrating Federated Identity into 5G systems involves connecting it to core components like the **Unified Data Management (UDM)** system. The UDM stores user data and profiles and works with federated identity providers to authenticate users and devices securely. This setup enables seamless service access, enhances interoperability, and strengthens overall security.

---

### Implementation Considerations

Implementing Federated Identity requires several steps to securely register devices:
1. **Device Identification:** Assign a unique identifier to each device.
2. **Credential Generation:** Generate credentials like certificates or cryptographic keys.
3. **Federated Identity Association:** Link the device’s credentials to a Federated Identity provider for unified access.
4. **Registration with 5G Networks:** Ensure the device’s identity is recognized and trusted by the network’s authentication framework.

To further enhance security, the paper discusses two critical measures:
- **Temporary Identifiers:** These protect devices from tracking or spoofing by frequently updating their identifiers. Temporary IDs are valid only for specific sessions, reducing risks.
- **Encryption:** Robust encryption techniques ensure data transmitted between devices and the network remains confidential and tamper-proof, safeguarding sensitive information.

However, challenges remain:
- **Device Limitations:** Many legacy devices lack the computational resources or firmware support to handle complex protocols.

!!! NEXT SLIDE !!!

- **Infrastructure Upgrades:** Deploying Federated Identity requires significant updates to authentication servers and network components, which can be costly and time-consuming.
- **Standardization:** Ensuring compatibility across different devices and networks demands universal standards, which are challenging to establish.

---

### Benefits of Federated Identity

Despite the challenges, Federated Identity offers several advantages:
- **Improved Security:** Centralized identity management reduces the risk of breaches.
- **Scalability:** It can handle millions of devices efficiently.
- **Cost-Effectiveness:** It eliminates the need for custom-built systems, saving time and resources.

---

### Future Directions

To fully realize the potential of Federated Identity, we need:
- **Lightweight Systems:** These should be tailored for resource-limited devices, ensuring they can still integrate securely.
- **Universal Standards:** Establishing compatibility across all devices and networks will make implementation smoother and more effective.
- **Enhanced Security:** Strengthening encryption and using temporary identifiers will protect both devices and data.

By addressing these challenges, Federated Identity can become a reliable solution for securely and efficiently connecting legacy IoT devices to 5G networks.

---

### Conclusion

To sum up, Federated Identity is a promising way to connect older IoT devices to 5G networks. It ensures secure, scalable, and efficient authentication. With further development, it could become a key solution for managing IoT security in the future.

Thank you for listening. I hope this gave you a clear understanding of how Federated Identity can help connect older IoT devices to 5G networks. I’m happy to answer any questions.


