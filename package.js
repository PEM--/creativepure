Package.describe({
  name: 'pierreeric:creativepure',
  version: '0.1.14',
  // Brief, one-line summary of the package.
  summary: 'A set of styles all written with Stylus and inspired from Codrops.',
  // URL to the Git repository containing the source code for this package.
  git: 'https://github.com/PEM--/creativepure',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.2');
  // Required packages
  api.use(['coffee:script@1.0.3', 'templating', 'mquandalle:jade@0.4.1']);
  // Stylus files
  api.addFiles(
    [
      'styles/animate.styl',
      'styles/buttonCreative.styl',
      'styles/buttonInspiration.styl',
      'styles/buttonMorphOverlay.styl',
      'styles/buttonSmall.styl',
      'styles/checkbox.styl',
      'styles/dotStyle.styl',
      'styles/goo.styl',
      'styles/input.styl',
      'styles/ironprogress.styl',
      'styles/loader.styl',
      'styles/links.styl',
      'styles/longShadow.styl',
      'styles/main.styl',
      'styles/selectCustom.styl',
      'styles/table.styl'
    ], 'client');
  // Jade files
  api.addFiles(['templates/goo.tpl.jade'], 'client'),
  // Coffeescript files
  api.addFiles('lib/animation.coffee', 'client');
});
