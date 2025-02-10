---
title: Implement image retrieval algorithm for printed text and musical sheets 
mentors:  
  - name: Dennis Friedl
    github: DennisFriedl
  - name: Peter Stadler
    github: peterstadler
skills: 
  - JavaScript
  - Python
forum: https://matrix.to/#/#gsoc-public:edirom.de
est_project_length: 90 hours
difficulty: medium
keywords:
  - Python
  - JavaScript
  - Image Recognition
  - Image Retrieval
  - Fingerprinting
  - Digital Humanities
  - Open Source
  - Music
---

Scholarly music editions are increasingly being published in a hybrid format. While many practicing musicians prefer printed music in multiple volumes, digital components offer advanced opportunities for scholarly work. A subproject of Edirom is exploring ways to establish a more direct connection between printed and digital materials.

#### Goal
The goal is to enable users to scan the page they are currently viewing in a printed volume using a mobile device and immediately access relevant digital enhancements tied to that specific page. In the future, these enhancements could, for example, allow the user to explore a historical handwritten text in augmented reality while sitting in front of a physical book. 
To achieve this, a lightweight, resource-efficient image retrieval algorithm is required—ideally one that can run on a user’s mobile device (using web technologies) or on a remote server. The algorithm should be able to compare a captured image against a database of several thousand pages. While solutions for image retrieval via hashing/fingerprinting already exist, this task poses two primary challenges:
1. Pages containing text or musical notation often have very similar layouts and may differ only in a few measures or notes, making it easy for a typical low-resolution hashing procedure to miss these subtle distinctions.
2. Because users take photos under real-world conditions, the images are likely to be imperfect (e.g., poorly lit or misaligned) and may include more than just the page content.

#### Impact
The project would lay a crucial foundation for integrating the physical and digital aspects of musicological research. Scholarly edition projects, such as the [Korngold Werkausgabe] (https://korngold-werkausgabe.de/en), could leverage this connectivity to develop innovative approaches to working with scholarly editions.

#### Warm-up Tasks
1. **Get familiar with the look of scholarly editions of music**, e.g. in the [Digital Mozart Edition](https://dme.mozarteum.at/DME/nma/nmapub_srch.php?l=2) or digitized books like [this one](https://books.google.de/books?id=bD-4DwAAQBAJ).
2. **Read about modern solutions to image retrieval**, e.g. in articles like [this](https://link.springer.com/article/10.1007/s11042-023-18007-9)
3. **Familiarize with available libraries** like [blockhash-js](https://github.com/commonsmachinery/blockhash-js), [imghash](https://github.com/pwlmaciejewski/imghash) or [imagehash](https://github.com/JohannesBuchner/imagehash).