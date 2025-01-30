---
title: Implement image retrieval algorithm for printed text and musical sheets 
mentors:  
  - name: Dennis
    github: DennisFriedl
skills: 
  - JavaScript
  - Python
forum: https://chat.edirom.de/gsoc
est_project_length: 90 hours
difficulty: medium
---

Scholarly music editions are increasingly being published in a hybrid format. While many practicing musicians prefer printed music in multiple volumes, digital components offer advanced opportunities for scholarly work. A subproject of Edirom is exploring ways to establish a more direct connection between printed and digital materials. The goal is to enable users to scan the page they are currently viewing in a printed volume using a mobile device and immediately access relevant digital enhancements tied to that specific page. In the future, these enhancements could, for example, allow the user to explore a historical handwritten text in augmented reality while sitting in front of a physical book. 
To achieve this, a lightweight, resource-efficient image retrieval algorithm is required—ideally one that can run on a user’s mobile device (using web technologies) or on a remote server. The algorithm should be able to compare a captured image against a database of several thousand pages. While solutions for image retrieval via hashing/fingerprinting already exist, this task poses two primary challenges:
1. Pages containing text or musical notation often have very similar layouts and may differ only in a few measures or notes, making it easy for a typical low-resolution hashing procedure to miss these subtle distinctions.
2. Because users take photos under real-world conditions, the images are likely to be imperfect (e.g., poorly lit or misaligned) and may include more than just the page content.
