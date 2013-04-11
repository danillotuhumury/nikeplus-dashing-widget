# Nike+ Dashing widget.

[Nike+](http://nikeplus.nike.com/plus/) widget for [Dashing](http://shopify.github.com/dashing), which uses the [Nike](https://rubygems.org/gems/nike_v2) gem by [Eric Harrison](https://github.com/fuelxc). It displays your last activity data (NikeFuel points, calories, distance and duration). Examples of the widget can be viewed [below](https://github.com/danillotuhumury/nikeplus-dashing-widget#preview).

## Dependencies

[Nike v2](https://rubygems.org/gems/nike_v2) is a dependency of the Nike+ widget. So, add `nike_v2` to the Gemfile of your Dashing dashboard:

```ruby
gem "nike_v2"
```

and run `bundle install`.

## Installation

To actually use the widget on your own Dashboard, you'll have to [request](https://developer.nike.com) an Access Token from Nike+ (Nike didn't release the OAuth API yet.) With this Access Token you'll be able to retrieve data from you Nike+ account.

## Usage

To use this widget, copy `nikeplus.coffee`, `nikeplus.html` and `nikeplus.scss` into the `/widgets/nikeplus` directory of your dashboard. Copy `nike+logo.png` into the `/assets/images` directory and put the `nikeplus.rb` file in your `/jobs` folder.

To include the widget on your dashboard, add the following snippet to the dashboard layout file:

```ruby
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
  <div data-id="nikeplus" data-view="Nikeplus"></div>
</li>
```

On to the next part. Enter the Access Token in the `nikeplus.rb` job file:

```ruby
# widget configuration
access_token = "ACCESS_TOKEN"
```

## Preview
![fuel](https://f.cloud.github.com/assets/1248374/370342/396f97f8-a2ef-11e2-815f-d9246828212d.png) 
![distance](https://f.cloud.github.com/assets/1248374/370344/397bf476-a2ef-11e2-8fb5-3795f642ff05.png)
