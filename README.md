# Jekyll::ThumborTag

A [Jekyll](https://jekyllrb.com/) template tag for [Thumbor](https://github.com/thumbor/thumbor) imaging service.

## Installation

Add this line to your application's Gemfile:

```ruby
group :jekyll_plugins do
  gem "jekyll-thumbor", git: "https://github.com/gbif/jekyll-thumbor"
end
```

And then execute:

```
$ bundle install
```

## Usage

You need to provide a thumbor configuration to your `_config.yml` file:

```yaml
thumbor:
  url: "https://your-thumbor-server" # e.g. https://api.gbif.org/v1/image
  key: "your-key"
```

Then in the liquid template you can use the template tag:

```html
<img src="{% thumbor https://example.org/picture.jpg, width: 500, height: 500 %}" />
<img src="{% thumbor {{background | absolute_url}}, fit_in, format_filter: webp, width: 2000 %}" />
```

## References
This plugin is based on the [getting started docs](https://jekyllrb.com/docs/plugins/your-first-plugin/) and an existing [thumbor plugin](https://github.com/myles/jekyll-thumbor)