hongene.github.com
=================

### Directory structure ###
* _config.yml
    Stores configuration data. Many of these options can be specified from the command line executable but it’s easier to specify them here so you don’t have to remember them.
* _drafts
    Drafts are unpublished posts. The format of these files is without a date: title.MARKUP. 
* _includes:
    These are the partials that can be mixed and matched by your layouts and posts to facilitate reuse. The liquid tag  {% include file.ext %} can be used to include the partial in  _includes/file.ext
* _layouts
    These are the templates that wrap posts. Layouts are chosen on a post- by-post basis in the YAML front matter, which is described in the next section. The liquid tag  {{ content }} is used to inject content into the web page.
* _posts
    Your dynamic content, so to speak. The naming convention of these files is important, and must follow the format: YEAR-MONTH-DAY-title.MARKUP
* _data
    Well-formatted site data should be placed here. The jekyll engine will autoload all yaml files (ends with .yml or .yaml) in this directory. If there's a file members.yml under the directory, then you can access contents of the file through site.data.members.
