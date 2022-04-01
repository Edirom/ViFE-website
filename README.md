# ViFE Website

These are the web pages of the "Virtueller Forschungsverbund Edirom". They 
are created via the static site generator [Jekyll].


## How to edit data

All data regarding projects and people are kept in the `_data` folder as 
YAML files and need to be edited there.

The texts for the tools and the index pages are found in the root directory 
as `werkzeuge.html` and `index.html`.


## How to build and develop

With Node (npm), Ruby, RubyGems and Bundler (`gem install bundler`)
installed as prerequisites it should be enough to enter
```shell
npm install
npm run build
npm run serve
```
Now browse to `http://localhost:4000` to see the page live. It will be 
refreshed automatically for any change to your local files. 


## Credits

Software and Frameworks used:

* Static site generator [Jekyll]
* CSS Framework by [Bootstrap]
* Webicons by [Font Awesome]
* jQuery JavaScript library by [The OpenJS Foundation]
* Calendar by [FullCalendar]
* Publications by [BibBase]


## License

This work is licensed under a [Creative Commons Attribution 4.0 Unported License (CC BY 4.0)]

[Jekyll]: https://jekyllrb.com
[Bootstrap]: https://getbootstrap.com
[Font Awesome]: https://fontawesome.com
[The OpenJS Foundation]: https://openjsf.org
[Creative Commons Attribution 4.0 Unported License (CC BY 4.0)]: https://creativecommons.org/licenses/by/4.0/
[Docker Hub]: https://hub.docker.com/r/edirom/vife-website/
[FullCalendar]: https://fullcalendar.io
[BibBase]: https://bibbase.org
