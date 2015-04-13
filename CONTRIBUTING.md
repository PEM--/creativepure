## Introduction
Contributions are very welcomed and appreciated. This little guide will help
you out on sharing your own implementation of new plugins for this package.

## Philosophy
We aim at not recreating the wheel. Some other extensions are already well
established in the Stylus community such as:
* [nib](https://github.com/tj/nib)
* [Autoprefixer](https://github.com/jenius/autoprefixer-stylus)
* [Axis](http://axis.netlify.com/)
* [Jeet](http://jeet.gs/)
* [Typographic](https://github.com/corysimmons/typographic)

These extensions are leveraged not recreated. Altogether, we recreate a full
CSS framework with nice animated, well designed HTML5 elements.

## Creating new widgets and plugins
When creating new themes for the HTML elements, you should consider at least
the capabilities to let the user choose their own color scheme. For that, we
use some variables depicted in our usage chapter like, `bgColor`, `brandColor`,
`brandDanger`, ...

If you can, you should use the 2 steps stance adopted by
[Codrops](http://tympanus.net/codrops/) for plugins on your new themed elements.
It consists in creating a base theme enclosed in a function and each variant in
another one function. This way our users are free to choose their own set of
inspired and creative HTML elements.

> **Tips** (from @Kestanous)<br>
  For easing the translation of raw CSS styles to Stylus, you can use
  [Css2Stylus](http://css2stylus.com/). Once done, try using the aforementioned
  Stylus extensions.

## No unused styles or HTML structure
While creating your example and your theme, avoid adding too many CSS rules
or unwanted HTML DOM elements as possible. Limits by all means the use of non
semantic elements like DIVs with classes like `.btn` or `.panel` when a simple
`fieldset` could be used. This allows our users to keep a SEO friendly HTML
code while using this package.

## Examples and main site
Our main site is our documentation and our main repository for example. Its
code has to be as small as possible so that our user can directly check our
good practices. We strive to use the most semantic language available like
[Jade](http://jade-lang.com/), [Coffee](http://coffeescript.org/) and...
obviously [Stylus](http://stylus-lang.com/).

## Browser compatibility
We aim at using solely what is compatible with the vastest majority of browsers.
Mobile and IE included. Please check the rendered results on as many platform
as necessary in order to obtain a 95% of usage compatibility.

## Acknowledging talent and respect license
[Codrops](http://tympanus.net/codrops/) is a immense repository of talent.
Always cite their articles when you are taking inspiration from their work.
If you've taken your inspiration from other resources, please cite them and
check of their work is in a compatible license with this package.
