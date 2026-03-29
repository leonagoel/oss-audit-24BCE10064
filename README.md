# Open Source Audit: Wireshark
**Student Name:** Leona Goel

**Roll Number:** 24BCE10064

**Course:** Open Source Software (OSS NGMC)

## Project Overview
This repository contains a structured audit of **Wireshark**, the world's leading open-source network protocol analyzer. This project explores its GPL v2 licensing, Linux integration, and contribution to the FOSS ecosystem.

## 📂 Repository Structure
```text
├── scripts/
│   ├── script1_identity.sh   # System reporting & student metadata
│   ├── script2_inspector.sh  # Package validation & philosophy case-study
│   ├── script3_auditor.sh    # Permission & directory health auditor
│   ├── script4_analyzer.sh   # Log-level analysis using regex/grep
│   └── script5_manifesto.sh  # Interactive OSS commitment generator
└── README.md                 # Project documentation
```

## 🔍 Audit Findings Summary
| Component | Status | Observation |
| :--- | :--- | :--- |
| **License** | GPL v2 | Confirmed via `COPYING` file in Wireshark source. |
| **Permissions** | Secure | System directories verified via `script3_auditor.sh`. |
| **Logs** | Clean | No critical networking errors found via `script4_analyzer.sh`. |
| **Environment** | WSL/Ubuntu | Successfully tested on Linux Kernel 5.15+. |

## How to Run on Linux
To execute these scripts, ensure you are on a Linux environment and follow these steps:

1. **Clone the repo:**
   ```bash
   git clone [https://github.com/leonagoel/oss-audit-24BCE10064.git](https://github.com/leonagoel/oss-audit-24BCE10064.git)
   cd oss-audit-24BCE10064
