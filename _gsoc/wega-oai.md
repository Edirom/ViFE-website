---
title: Develop an OAI-PMH API for the WeGA-WebApp 
mentors:  
  - name: Peter Stadler
    github: peterstadler
  - name: Dennis Ried
    github: riedde
skills: 
  - XQuery
  - XML
  - REST APIs
forum: https://matrix.to/#/#gsoc-public:edirom.de
est_project_length: 350 hours
difficulty: medium
keywords:
  - REST
  - API
  - OpenAPI
  - Swagger
  - Dublin Core
  - Linked Data
  - Open Source
  - XQuery
---

The [WeGA-WebApp] drives the publication of the digital edition of 
Carl Maria von Weber's letters, diaries and writings–and much more. 
While there are already various interfaces to interact with the WeGA-WebApp an 
[OAI-PMH] (Open Archives Initiative Protocol for Metadata Harvesting) API 
is still missing.
Because the OAI-PMH standard is a widely-used protocol that allows 
repositories to expose structured metadata for harvesting by external 
institutions, it is a cornerstone for integrating digital resources into global 
research networks.


#### Goal

The to be developed API should provide endpoints for common OAI-PMH verbs, 
such as `Identify`, `ListMetadataFormats`, `ListIdentifiers`, `ListRecords`, and
`GetRecord`, enabling granular access to the metadata from the WeGA-WebApp.
The task should also include testing the implementation for compliance with
the OAI-PMH standard and documenting the API endpoints, including their
functionality and expected parameters, for internal and external users.


#### Impact

The project would significantly enhance the accessibility, interoperability, and
discoverability of all digital editions served by the WeGA-WebApp, enabling
the project to reach larger academic and cultural audiences.

#### Warm-up Tasks

1. **Get acquainted with the OAI-PMH standard** and the required API endpoints
2. **Familiarize with the WeGA-WebApp** 
  * Have a look at XQuery as a programming language
  * You can build on the already established Linked Data and Dublin Core
    interfaces of the WeGA-WebApp, and its existing [Swagger OpenAPI].
  * The existing Dublin Core metadata interface provides a solid foundation for
    defining the metadata exposure required by OAI-PMH, while the Linked Data
    interface may inform URI structures.
  * The Swagger OpenAPI can guide the integration of OAI-PMH endpoints 
    within the broader API ecosystem of the WeGA-WebApp.


[WeGA-WebApp]: https://github.com/Edirom/WeGA-WebApp
[OAI-PMH]: https://www.openarchives.org/pmh/
[Swagger OpenAPI]: https://www.weber-gesamtausgabe.de/api/v1/index.html
