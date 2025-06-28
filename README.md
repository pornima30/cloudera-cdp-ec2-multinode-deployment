# 🧠 Cloudera CDP EC2 Multi-Node Deployment

This project demonstrates the full deployment of **Cloudera Data Platform (CDP)** on **AWS EC2 instances** configured in a **multi-node cluster setup**. The deployment includes Cloudera Manager, HDFS, Hive (on Tez), Hue, YARN, ZooKeeper, and Oozie.

---

## 📌 Project Summary

- ⚙️ Setup: 3 Master + 3 Worker EC2 nodes
- ☁️ Platform: Cloudera Manager 7.4.4
- 📦 Services: HDFS, Hive on Tez, Hue, YARN, ZooKeeper, Oozie
- 💻 Automation: Shell scripts for system optimization and installation
- 🔒 System Config: Disabled transparent hugepages, tuned swappiness, NTP installed

---

## 🔧 EC2 Configuration

| Node Type | Count | Instance Type | OS           | Ports         |
|-----------|-------|----------------|--------------|----------------|
| Master    | 3     | t2.xlarge      | Ubuntu 20.04 | 7180, 8080, 8020, 8888 |
| Worker    | 3     | t2.large       | Ubuntu 20.04 | 50070, 8042, etc. |

---

## 🛠️ Setup Scripts

All setup scripts are available in the `scripts/` folder.

### Key Steps Included:

1. **Update system packages**
2. **Disable Transparent HugePages**
3. **Install and configure NTP**
4. **Adjust swappiness**
5. **Install psycopg2 for CM**
6. **Run Cloudera Manager installer**

Each script is modular and can be reused for similar deployments.

---

## 🧪 Cluster Services Verified

| Service        | Status   | Notes                      |
|----------------|----------|----------------------------|
| HDFS           | ✅       | Fully running with HA      |
| Hive on Tez    | ✅       | Verified with sample query |
| Hue            | ✅       | Accessible via browser     |
| YARN           | ✅       | Jobs tested                |
| ZooKeeper      | ✅       | Nodes registered           |
| Oozie          | ✅       | Service started            |

---

## 📸 Screenshots

| Description           | Screenshot                      |
|-----------------------|----------------------------------|
| Cloudera Manager UI   | !![Cloudera CDP deployment](https://github.com/user-attachments/assets/ab5764a8-7db8-49ac-b073-07cf1e5c37db)|
| CDP Multinode         | ![CDP Multinode](https://github.com/user-attachments/assets/d1346265-121d-4091-ad7a-1c5bfe97dae1)|

---

## 📁 Folder Structure

