---
layout: post
title: "Bargheer Edition 2026. Or how to update your Edirom data for the latest Edirom Online viewer."
authors: "Daniel Jettka, Peter Stadler"
excerpt: "This blog post demonstrates several steps in updating Edirom edition data for the latest Edirom Online version. The example is the Bargheer Edition 2026."
teaserImage: "/assets/blog/2026-09-03/bargheer-edirom.jpg"
---


### Introduction

The Bargheer Edition is a digital edition of the **Fiedellieder** by composer, conductor, and violinist **Carl Louis Bargheer (1831–1902)**, compose on the basis of texts by **Theodor Storm (1817–1888)**. In addition to the complete musical edition, it provides a detailed critical report documenting the complex genesis, revision, and transmission of the songs.The edition can be found online at [https://bargheer.edirom.de/](https://bargheer.edirom.de/ "https://bargheer.edirom.de/") 

The project places the Fiedellieder within their broader historical and cultural context. Extensive biographical and archival materials shed light on Bargheer’s career, his role in the musical life of Detmold, and his connections with **Johannes Brahms**. Additional material includes letters, manuscripts, archival documents, photographs, concert programmes, and facsimiles, many of which were published with the Bargheer Edition for the first time. Particular attention is also devoted to the genesis of Storm’s texts, including their original connection with **Ferdinand Röse’s fairy tale** _**Das Sonnenkind**_ and the subsequent development of the versions used by Bargheer.

With the ongoing modernization of Edirom Online, which is used to represent numerous editions including the Bargheer Edition publicly on the web, edition data and customizations also require updates to keep software and edition in compatible states. The findings of the update process for Bargheer can be of interest for other edition projects, and so we like to demonstrate them in the subsequent paragraphs.

### Debugging in latest Edirom version

Edirom Online is constantly developed and has undergone several updates in the last years. The first step to test the compatibility of an edition is to deploy it in the latest Edirom release. Instruction on how install Edirom can be found here: [https://github.com/Edirom/Edirom-Online](https://github.com/Edirom/Edirom-Online "https://github.com/Edirom/Edirom-Online") 

Afterwards first hints on incompatibilities can be found in your browser‘s inspector tool. If for instance all or even only certain specific content is not displayed for an edition in the browser, having a look at the Console and Network requests and responses in the Web Developer Tools of the browser can give important insights. In the case of the Bargheer Edition this way of debugging brought up incompatibilites in the XML structure of annotations and requests to image URLs that resulted in „404 Not found“ responses.  

### Data Updates

The Bargheer Edition needed updates in several areas which can be of interest for other older editions too in order to make them compatible with a newer Edirom Online version.


**MEI version** - Edirom Online supports the backwards-compatibility for old MEI versions. However, it is a good idea to update the MEI files in an edition to make it as future-proof as possible. In the Bargheer Edition MEI files dating back to a version from 2012 were present. With the help of the [MEI Garage‘s validator](https://meigarage.edirom.de/validation/mei50 "https://meigarage.edirom.de/validation/mei50") these MEI files were updated to MEI 5.0 by a validation-adjustment cycle. A specific feature of the MEI files could be found in the mei:manifestation element which either requires an attribute singleton=“true“ (for manuscripts) or one or more descendant mei:item elements (for prints) which are both supported but distinguished by the Edirom:

```xquery
(matches($doc//mei:mei/@meiversion, $meiVersion4To5Regex) and exists($doc//mei:manifestation[@singleton='true'])) (:mei4+ for manuscripts:)
or
(matches($doc//mei:mei/@meiversion, $meiVersion4To5Regex) and exists($doc//mei:manifestation//mei:item)) (: mei4+ for prints :)
```

See in context: [XQuery in the Edirom Online backend](https://github.com/Edirom/Edirom-Online-Backend/blob/c5820dd8a0f9f9b0b8cd45618b7c2c19a5e2d857/data/xqm/source.xqm#L47-L49 "https://github.com/Edirom/Edirom-Online-Backend/blob/c5820dd8a0f9f9b0b8cd45618b7c2c19a5e2d857/data/xqm/source.xqm#L47-L49")


**Annotations** - In the deployment of the Bargheer Edition to the latest Edirom release initially no annotations were shown although they are encoded in the works file. Having a look at the response of the XQuery script getAnnotations.xql in the browser network traffic showed that no annotations were found due to an incompatible encoding. This was solved by updating the annotations to a supported format.

```xml
<annot class="#ediromAnnotPrio3 #annotation.category.Correction #annotation.category.Music"
  type="editorialComment"
  xml:id="Lied1_001"
  plist="xmldb:exist:///db/apps/Bargheer-Edition/sources/sourceK_s2.xml#edirom_measure_98607602-7ea2-4304-b5b6-9513cb8227c3 xmldb:exist:///db/apps/Bargheer-Edition/sources/sourceA2_s1.xml#edirom_measure_14ba9be3-856f-4b7c-956e-754802560793 xmldb:exist:///db/apps/Bargheer-Edition/sources/neusatz.xml#neusatzMdiv1Measure3">
  <title xml:lang="de">Korrekturen in T. 3b lH</title>
  <title xml:lang="en"></title>
  <p>In K_s2 standen ursprünglich auf Zählzeit 4 <rend fontfam="musicFont">𝅘𝅥</rend>
    <!--Hexadezimalcodes mit A bis F brauchen ein x -->
    <rend fontstyle="italic">D</rend>-<rend fontstyle="italic">d</rend>, die jedoch ausrasiert und durch <rend fontstyle="italic">G</rend>-<rend fontstyle="italic">g</rend> überschrieben wurden.
  </p>
</annot>
```

See in context: [annotation in work file](https://github.com/Edirom/Bargheer-Edition/blob/851b5ede7407a7e20629d194876127bca6badae7/works/edirom_work_2c574d8e-fbb7-44b6-bc73-f1b5715621e8.xml#L140-L149 "https://github.com/Edirom/Bargheer-Edition/blob/851b5ede7407a7e20629d194876127bca6badae7/works/edirom_work_2c574d8e-fbb7-44b6-bc73-f1b5715621e8.xml#L140-L149)


**Texts** - ...

- Texts, aka TEI files


**Configuration files** - There are several configuration files that may have to be updated to make the edition compatible with the latest Edirom release. This first is the prefs.xml file, which can for instance be used to set the start screen (startWindow) for an edition, and also other preferences.

```xml
<prefs>
    <version>1.0</version>
    <entries>
        <entry key="application_language" value="de"/>
        <entry key="annotation_layout" value="EdiromOnline.view.window.annotationLayouts.AnnotationLayout1"/>
        <entry key="image_server" value="openseadragon"/>
        <entry key="image_prefix" value="https://bargheer.edirom.de/Scaler/IIIF/"/>
        <entry key="edition_path" value="/db/apps/Bargheer-Edition/"/>
        <entry key="additional_css_path" value="xmldb:exist:///db/apps/Bargheer-Edition/css/bargheer.css"/>
        <entry key="plugin_tooltips" value="../Bargheer-Edition/js/tooltips.js"/>
        <entry key="start_documents_uri" value="xmldb:exist:///db/apps/Bargheer-Edition/texts/text-01.xml"/>
    </entries>
</prefs>
```

See in repository: [prefs.xml](https://github.com/Edirom/Bargheer-Edition/blob/d45625146bcb36a79de5452267f262548bc31ab9/prefs.xml)

For custom JavaScript and CSS it is specifically important to get the URL paths right. Another interesting configuration file is the collection.xconf which holds information for the search index that is used by the search in the Edirom. For Bargheer the index configuration had to be updated, and the [EditionExample](https://github.com/Edirom/EditionExample/blob/451e6259878888c41f0d828d68e103635e638002/collection.xconf "https://github.com/Edirom/EditionExample/blob/451e6259878888c41f0d828d68e103635e638002/collection.xconf") can serve as an appropriate template for this (see this [change](https://github.com/Edirom/Bargheer-Edition/commit/0b37aee58e8926ee04404dd0c7eb080eaabcca7d "https://github.com/Edirom/Bargheer-Edition/commit/0b37aee58e8926ee04404dd0c7eb080eaabcca7d")).


**Navigation** - For the new version of the Bargheer Edition the [navigation was restructured](https://github.com/Edirom/Bargheer-Edition/commit/2e19c46758705b4ff1816089d9dc643be4dd8343 "https://github.com/Edirom/Bargheer-Edition/commit/2e19c46758705b4ff1816089d9dc643be4dd8343") to a rather small extent. This was no technical requirement but simply had design reasons.


### Documentation

**README** – This file serves as the first entry point for users of a GitHub repository and its contents are displayed on the repo’s landing page in GitHub. It should contain information about the project’s objectives, contents, and technical requirements as well as steps to make use of the repository, e.g. instructions how to run an application. In the case of the Bargheer Edition a conceptual novelty was introduced by adding a Dockerfile which can be used to setup an Edirom Online directly from the edition’s repository (see section about Deployment below). The README was extended with instructions on how to use Docker in this case and the general description of the edition was updated to give some basic information about its contents and development history.

See in repository: [README.md](https://github.com/Edirom/Bargheer-Edition/blob/develop/README.md)


**CITATION.cff** – This file is a standardized metadata file that provides information needed to cite a software project or research resource correctly. It typically contains details such as the authors, title, version, publication date, and preferred citation format, making it easier for researchers to give appropriate credit to the creators. The CFF file from the Bargheer Edition can serve as a blueprint for other editions.

See in repository: [CITATION.cff](https://github.com/Edirom/Bargheer-Edition/blob/develop/CITATION.cff)


### Images

Correct paths to image server

### Infrastructure/Deployment

By inserting a single Dockerfile into the GitHub repository of the Bargheer Edition it is now possible to build an Edirom Online instance without big effort. The README (see above) contains instructions on how to start the build process and run the Edirom containing the edition.

See in repository: [Dockerfile](https://github.com/Edirom/Bargheer-Edition/blob/04ccb1e26ab297e2ed45bc01c6b2aae18814ad6e/Dockerfile "https://github.com/Edirom/Bargheer-Edition/blob/04ccb1e26ab297e2ed45bc01c6b2aae18814ad6e/Dockerfile")


### Validation

A visual check of the running Edirom Online going through various features can bring insights on the successful update of the edition. The Edirom Online release process includes several checks that can also be used in edition testing.

See in repository:  [GUI testing checklist](https://github.com/Edirom/Bargheer-Edition/issues/11 "https://github.com/Edirom/Bargheer-Edition/issues/11")
