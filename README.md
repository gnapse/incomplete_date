# incomplete_date

This plugin allows a Rails application to store and manage incomplete date data, which is very common in historical archives, particularly in genealogy.

## Usage

Declare columns in the database, preferably with the expected attribute name prefixed, for instance with `raw_`. For example, for an attribute named `birth_date` we could declare a column named `raw_birth_date` or alternatively `internal_birth_date`. The type of these columns must be `:integer`.

Then in the models, to have the virtual attributes returning and accepting values of type `IncompleteDate` declare the following:

```ruby
incomplete_date_attrs :birth_date, :death_date, :prefix => 'raw'
```

The default prefix is `raw` so we do not need to declare it, unless we used another prefix for the columns.

Alternatively, if there's no regular relation between the column name and the expected attribute name, use the following way:

```ruby
incomplete_date_attr :attr_name, :raw_column_name
```

Note that in this last example we used the singular method call (finished in `attr` instead of `attrs`). In this case we pass the attribute name we want, followed by the real column name found in the database.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'incomplete_date'
```

And then execute:

```bash
$ bundle install
```


Alternatively, you can install it yourself as:
```bash
$ gem install incomplete_date
```

## Contributing

If you want to contribute to (or fork) this project you can clone it by doing the following:

```
git clone add git://github.com/gnapse/incomplete_date.git
```

And then send pull requests.

## License

Released under the MIT license.

## Authors

* Ernesto García <gnapse@gmail.com>
* Daniel Collado-Ruiz <daniel@collado-ruiz.es>
