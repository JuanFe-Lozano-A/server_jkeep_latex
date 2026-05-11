# 🏰 Project JKeep: The Frankenstein NAS

What do you do with a dusty Asus X441U laptop that Windows 10 has basically given up on? You wipe it, call it a "Slave," and turn it into an enterprise-grade private cloud. 

This repo documents the technical resurrection of my lab server—from fighting ZFS partition errors to streaming family videos across Pereira via Tailscale.

![Hardware Genesis](resources/IMG_7808.jpg)
*The Asus X441U in its final headless form. No GUI, no bloat, just pure Debian power.*

## 🧠 The "Overkill" Stack
Most people just buy a Synology. I chose suffering (and learning):
*   **OS:** **Debian 13 (Trixie)** — stripped down to the bone. If it has a cursor, it's taking up RAM I need for PostgreSQL.
*   **Storage:** **ZFS (Pool: `tank`)** — because bit-rot is for amateurs. Using `copies=2` because I only have one physical HDD and I'm a paranoid CS student.
*   **Orchestration:** **Docker** — everything lives in a container. If it breaks, I just kill it and start over.
*   **Networking:** **Tailscale** — Zero open ports. If you aren't on my Tailnet, you don't exist.

![Internal View](resources/IMG_7814.JPG)
*The "Data Plane" and "Operating Plane" co-existing in mechanical harmony.*

## 📁 What's in the Box?
*   **[`/docs`](docs/)**: A 20+ page LaTeX report that I spent way too much time formatting. It covers everything from ARC memory tuning to why I hate Windows Update.
*   **[`/scripts`](scripts/)**: The automation spells I used to summon ZFS and Docker from the void.
*   **[`/docker`](docker/)**: The `docker-compose.yml` that keeps Jellyfin and Postgres running while I sleep.

## 📺 The Jellyfin Experience
I'm running **Intel QuickSync** hardware acceleration on this thing. That means my 2016-era i5 handles 1080p transcodes like a champ while I'm out at UTP.

## 📄 Final Report
If you actually want to read the technical deep-dive (or just see the LaTeX warning boxes for when I almost bricked the disk), check out the [**JKeep Technical Case Study (PDF)**](docs/jkeep_final_report.pdf).

---
*Built with coffee and frustration by Juanfe Lozano @ UTP*

