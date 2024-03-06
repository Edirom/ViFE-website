# ViFE Blogposts
Some technical instructions on writing a ViFE Blogpost.

## Where to start?
Create a new branch and name it `blogpost-[some_name]`.

## Filename
Create a new markdown file in `/_posts` and name it starting with the date of the assumed publication day: `[YYYY-MM-DD-Your-Posts-Title].md`.

## What's in the file?
The markdown file should consist of two parts, a metadata head and the actual text body.

### Metadata head

    ---
    layout: post
    title: "[Blogpost title]"
    authors: "[Author 1], [Author 2], etc."
    excerpt: "[Abstract]"
    teaserImage: "/assets/blog/[YYYY-MM-DD]/[teaserImageFileName]"
    ---

### Text body
Right after the metadata head begin with your markdown encoded text.

### Figures
As support for figures and figure captures is limited in markdown you could use HTML:

    <figure>
        <img src="{{site.url}}/assets/blog/[PathToYourImage]" alt="[Alternative Titel]" style="width: 100%"/>
        <figurecaption><small>[Your Figure capture]</small></figurecaption>
    </figure>

## Tips
1. oXygen XML Editor has integrated markdown support. You can write and preview your text.
2. You could also use VS Code with any of its installable markdown extensions. Or: use any other desiered text editor.
3. Look through other/older blogposts  