---
title: Front-end testing for Edirom-Online
mentors:  
  - name: Daniel Jettka
    github: daniel-jettka
skills: 
  - Selenium
  - JavaScript
  - CI/CD
forum: https://chat.edirom.de/gsoc
est_project_length: 350 hours
difficulty: medium
---

[Edirom-Online] is a software for the presentation and analysis of critical musical editions in a digital format, particularly in the fields of musicology and philology. Edirom-Online supports various data formats commonly used in digital humanities, such as [TEI] (Text Encoding Initiative) for textual data and [MEI] (Music Encoding Initiative) for musical data. This allows for the integration of different data formats, starting in the early days with texts, images and music and adding audio and even film within a single edition. The Edirom idea was born in 2004 at Musikwissenschaftliches Seminar Detmold/Paderborn and even after several years of Edirom development, the success of Edirom based on the same core concepts as in the beginning continues with numerous projects using and developing Edirom tools and creating digital musical editions with this software.

#### Goal

The front-end of the Edirom is written in JavaScript ([ExtJS]) and is currently modularized and modernized by developing and integrating custom web components. To ensure the quality, functionality, performance, and user-friendliness across different browsers we are seeking for support in implementing front-end testing with [Selenium]. The proposed project includes setting up and configuring a robust test automation framework using Selenium WebDriver for cross-browser testing and integrating it into the existing CI/CD pipelines. Compatibility with modern web browsers, including Chrome, Firefox, Safari, and Edge should be ensured, and reusable and maintainable test scripts to cover core user flows and features should be implemented. 

#### Impact

The testing framework will ensure that new code changes do not affect existing functionality. Defects will be clearly identified and meaningfully logged by the tests to allow for resolving the reported issues. This will contribute considerably to the usability and quality of the Edirom software. 

#### Warm-up Tasks

1. **Read the documentation and familiarize with the code** of Edirom-Online:  
   - [Edirom-Online Documentation](https://github.com/Edirom/Edirom-Online/tree/develop/docs)

2. **Familiarize yourself with the issues** of Edirom-Online:  
   - [Edirom-Online Issues](https://github.com/Edirom/Edirom-Online/issues)

3. **Dive into GitHub CI/CD and Selenium:**
   - [GitHub CI/CD](https://github.com/resources/articles/devops/ci-cd)
   - [Selenium]

[Edirom-Online]: https://github.com/Edirom/Edirom-Online
[TEI]: https://tei-c.org/
[MEI]: https://music-encoding.org/
[ExtJS]: https://www.sencha.com/products/extjs/
[Selenium]: https://www.selenium.dev/
