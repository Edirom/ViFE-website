---
title: Integration of 3D objects and 3D viewer in Edirom Online 
mentors:  
  - name: Daniel Röwenstrunk
    github: roewenstrunk
  - name: Dennis Friedl
    github: DennisFriedl
skills: 
  - Javascript
  - XQuery
  - REST APIs
forum: https://matrix.to/#/#gsoc-public:edirom.de
est_project_length: 175 hours
difficulty: medium
keywords:
  - REST
  - API
  - OpenAPI
  - Swagger
  - Javascript
  - ExtJS
  - 3D
  - Kompakkt
  - Open Source
  - XQuery
---


[Edirom Online] is a software for the presentation and analysis of critical 
musical editions in a digital format, particularly in the fields of musicology 
and philology. Edirom Online supports various data formats commonly used in 
digital humanities, such as TEI (Text Encoding Initiative) for textual data 
and MEI (Music Encoding Initiative) for musical data. This allows for the 
integration of different data formats, starting in the early days with texts, 
images and music and adding audio and even film within a single edition. 
The Edirom idea was born in 2004 at Musikwissenschaftliches Seminar 
Detmold/Paderborn and even after several years of Edirom development, the 
success of Edirom based on the same core concepts as in the beginning 
continues with numerous projects using and developing Edirom tools and creating 
digital musical editions with this software.


#### Goal

The goal is to make 3D objects available for editions presented with Edirom Online.
This requires work in the frontend in JavaScript ([ExtJS]) and simple work in the
backend with XQuery. The existing API in [OpenAPI] format is to be extended by
endpoints for metadata of 3D objects and 3D objects themselves. The web component 
[Kompakkt Standalone Viewer] is to be used to integrate the 3D viewer into 
the front end. The integration is then essentially limited to the introduction 
of a new object type. The other object types can serve as a template for all 
tasks.

#### Impact

The integration of 3D objects in Edirom Online allows musicologists to use objects
such as instruments and requisites as well as stage sets and architectural models
in editions. This enables connections that can currently only be described verbally.
In addition, Edirom Online can then also be used in other contexts for the presentation
of editions, as relevant media types are supported.

#### Warm-up Tasks

1. **Get familiar with Edirom Online**
  * Have a look at [Weber Clarinett Quintett] edition in Edirom Online
2. **Have a look at Kompakkt and 3D objects in humanities**
3. **Get familiar with XQuery and OpenAPI**


[Edirom Online]: https://github.com/Edirom/Edirom-Online
[Kompakkt Standalone Viewer]: https://github.com/Kompakkt/StandaloneViewer
[ExtJS]: https://www.sencha.com/products/extjs/
[OpenAPI]: https://www.openapis.org/
[Weber Clarinett Quintett]: https://klarinettenquintett.weber-gesamtausgabe.de/
