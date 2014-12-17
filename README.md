# ducksboard_json

Write JSON that will be used by Ducksboard.

This gem produces a very specific format so it may not be useful for many cases.

## Installation

Run:

    $ gem install ducksboard_json

## Usage

Some examples:

    $ ducksboard_json --application my_app --job my_job --ok
    $ cat /tmp/ducksboard_json/my_app/my_job.json
    {"value":0,"completion_time":1418778217,"application":"my_app"}

    $ ducksboard_json --application my_app --job my_job --error
    $ cat /tmp/ducksboard_json/my_app/my_job.json
    {"value":1,"completion_time":1418778311,"application":"my_app"}
