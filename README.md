This plugin allows to use **cut** block to show/hide text with click on Octopress

## Installation

* Copy files from repository clone to corresponding locations on your Octopress instance
* Add line `@import "custom/cutblock";` to your `/sass/screen.scss` file to use css/scss provided by plugin
* Add lines to your `/source/_includes/custom/head.html` file to load JQuery and js provided by plugin
``` javascript
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="{{ root_url }}/javascripts/cutblock.js" type="text/javascript"></script>
```

## Usage

Wrap your text with **cut** and **endcut** tags

```
{% cut %}
Text
to be
hidden
{% endcut %}
```

Also possible to set title
```
{% cut Big Title %}
Text
to be
hidden
{% endcut %}
```