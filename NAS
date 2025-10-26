
## 💻 Raspberry Pi Network Attached Storage (NAS) System

**Project Objective:**  
To design, build, and configure a cost-effective and portable **Network Attached Storage (NAS)** solution using a **Raspberry Pi 4** for centralized file storage and easy access across multiple devices.

**Platform:** Raspberry Pi 4 (4GB/8GB RAM)  
**Operating System:** Raspberry Pi OS Lite (64-bit)  
**NAS Software:** OpenMediaVault (OMV)

---

### 1. Hardware and Software Requirements

The project utilized readily available, low-power components to create a reliable and efficient NAS device.

#### 1.1 Hardware Components

- **Raspberry Pi 4:** Chosen for its gigabit Ethernet port and USB 3.0 support, offering high-speed data transfers.  
- **Storage:** A high-speed **USB 3.0 External Hard Drive** (or SSD) was used for data storage.  
- **Accessories:** Micro SD card for the OS, power adapter, and an Ethernet cable (preferred over Wi-Fi for improved stability and performance).

#### 1.2 Software Stack

| Category | Software Used | Purpose |
| :--- | :--- | :--- |
| **Base OS** | Raspberry Pi OS Lite | Lightweight, command-line based Linux distribution. |
| **NAS Core** | **OpenMediaVault (OMV)** | Provides a web-based interface for managing NAS functionalities (file systems, users, and network shares). |

---

### 2. NAS Implementation (OpenMediaVault Configuration)

The NAS setup included preparing the operating system, enabling remote access, and configuring storage and shared folders.

#### 2.1 Headless OS Setup

1. **Imager Tool:** Used the Raspberry Pi Imager to flash **Raspberry Pi OS Lite** onto the SD card.  
2. **Pre-Configuration:** Enabled **SSH** and set the default `pi` user password using advanced settings (`Ctrl + Shift + X`) in the Imager tool.  
3. **Headless Operation:** The system was booted and accessed remotely via SSH, eliminating the need for a monitor or keyboard.

#### 2.2 OMV Installation and System Updates

1. **Remote Access:** Connected to the Pi via SSH using its DHCP-assigned IP address.  
2. **System Update:** Updated packages using:

```bash
sudo apt update && sudo apt upgrade -y
````

3. **OMV Installation:** Installed **OpenMediaVault** using the official installation script, which automated setup and configuration.

---

### 2.3 Storage and Sharing Configuration

* **Accessing Web Interface:** Logged into the OMV dashboard via `http://<Pi_IP>`.
* **Drive Setup:** The external USB drive was detected, mounted, and formatted (preferably as **EXT4**) under **Storage > File Systems**.
* **Shared Folder Creation:** A dedicated shared folder named **nasty** was created on the mounted drive. The **pi user** was granted **read/write permissions**.
* **Network Protocols:** Enabled and configured **SMB/CIFS** (for Windows) and **NFS** (for Linux/macOS) to make the shared folder accessible across devices.

---

### 3. Testing and Verification

* Verified that the NAS could be accessed from **multiple devices** on the local network.
* Successfully performed **file read/write operations** from both Windows and Linux clients.
* Tested **transfer speeds** over **gigabit Ethernet** to ensure optimal performance.
* Observed stable network connections and minimal latency during file transfers.

---

### 4. Conclusion

This project successfully transformed a **Raspberry Pi 4** into a functional and efficient **Network Attached Storage (NAS)** system.
The setup offers **centralized file storage**, **simple web-based management**, and **seamless file access** over the network — all while maintaining **low power consumption** and **cost-effectiveness**.

It demonstrates how open-source tools like **OpenMediaVault (OMV)** can turn affordable hardware into a **reliable storage and backup solution** suitable for both **personal** and **small office environments**.

---
