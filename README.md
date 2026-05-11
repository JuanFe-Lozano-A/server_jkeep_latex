# Project JKeep: Professional Debian NAS

A comprehensive implementation and documentation of a headless server infrastructure built on repurposed legacy hardware (Asus X441U).

## 🚀 Core Stack
*   **OS:** Debian 13 (Trixie) - Headless / GUI Neutralized
*   **Storage:** ZFS Pool (`tank`) with LZ4 Compression & Sanoid Snapshot Policies
*   **Orchestration:** Docker Engine & Docker Compose
*   **Services:** PostgreSQL (Database) & Jellyfin (Media)
*   **Networking:** Tailscale (Zero Trust / WireGuard Mesh VPN)

## 📁 Repository Structure
*   **`/docs`**: Final LaTeX technical report ([PDF](docs/jkeep_final_report.pdf) & [Source](docs/jkeep_final_report.tex)).
*   **`/scripts`**: Shell scripts for ZFS initialization, Docker installation, and power optimization.
*   **`/docker`**: Orchestration manifests (`docker-compose.yml`) for the application layer.
*   **`/resources`**: Hardware analysis and archival project materials.
*   **`/configs`**: System configuration backups.

## 📄 Documentation
The project includes a 20+ page technical case study detailing every design decision—from ZFS ARC tuning and "Self-Healing" storage theory to Zero Trust networking strategy. 

You can view the full report here: [jkeep_final_report.pdf](docs/jkeep_final_report.pdf)

## 🛠️ Management Commands
Custom Zsh aliases used for remote management from macOS:
- `wake-server`: Wake-on-LAN trigger.
- `open-server`: Passwordless SSH access via Tailscale.
- `sleep-server`: Remote graceful shutdown.

---
*Developed by Juanfe Lozano - Universidad Tecnológica de Pereira (UTP)*
