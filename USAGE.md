# Usage

We love seeing forks of Today I Learned in production! Here's a basic guide
for customizing your own version of the site.

### Style

Feel free to get creative! The layout, colors, fonts, assets, meta tags we've
chosen should only serve as a starting point.

Here's a [great example](https://til-engineering.nulogy.com/) of a Today I Learned
fork that is true to the original code, yet wholly original.

### Attribution

Please link to Hashrocket somewhere on the main page! Today I Learned is an
open-source project, and support from the community helps inspire continued
development.

Here's an example of an easy way to link to us:

```ruby
# app/views/posts/index.html.haml

.more-info
  :markdown
    [TIL](https://til.hashrocket.com) is an open source project by
    [Hashrocket](https://hashrocket.com). Check out the [source
    code](https://github.com/hashrocket/hr-til) to make your own!
```

### Forks in Production

- http://til-rally.herokuapp.com/
- http://til.obiefernandez.com/
- https://fortiscadere.com/
- https://til-boston.cfapps.pez.pivotal.io/
- https://til-engineering.nulogy.com/
- https://tilns.herokuapp.com/

Have you deployed TIL to production? Please open a pull request or contact
dev@hashrocket.com to be added to this list.  Thank you to everybody who has
contributed, forked, and deployed!
