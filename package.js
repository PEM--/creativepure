Package.describe({
  name: 'pierreeric:creativepure',
  version: '0.1.5',
  // Brief, one-line summary of the package.
  summary: 'A set of styles all written with Stylus and inspired from Codrops.',
  // URL to the Git repository containing the source code for this package.
  git: 'https://github.com/PEM--/creativepure',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.1');
  api.addFiles(
    [
      'styles/main.styl',
      'styles/animate.styl',
      'styles/ironprogress.styl',
      'styles/input.styl',
      'styles/links.styl',
      'styles/buttonSmall.styl'
    ], 'client');
});
