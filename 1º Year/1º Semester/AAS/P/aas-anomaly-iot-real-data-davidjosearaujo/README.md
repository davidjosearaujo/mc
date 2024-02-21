# Anomaly detection on Real Data

In this work we will explore a dataset provided by the Cybersecurity Office from UA.
The dataset contains de following fields:

1. **timestamp:** thetimestamp of the communication
2. **user:** an anonamized string that represents the user (it is consistent)
3. **dst_port:** the destination port used in the communication
4. **asn:** the autonous system number
5. **malware_type:** the type of malware identified by the firewall
6. **signature:** signature of the anomaly given by the firewall

This dataset was extended using the **asn** number to include the location, and the entity contacted.

Use the methods learned on the class to identify the anomalies. Try anomaly detection methods such as Clustering, AutoEncoderes and Additional Models (e.g. Isolation forest, One-Class SVM).