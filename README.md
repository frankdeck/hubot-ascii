# hubot-ascii
A hubot script to generate ascii images based on google image search

## Installation

You will need **imagemagick** and **jp2a** installed on your hubot server for this script to work correctly.  If you are using heroku, imagemagick is already included,
jp2a is not and you will need to add the binary.  The simplest way to do this is to add the binary to a `.heroku/vendor` directory in your hubot and add
`.heroku/vendor` to your `PATH`.  You can find a copy of the binary at https://github.com/frankdeck/hb/tree/master/.heroku/vendor for your convenience.

Once the server dependencies are taken care of, you just need to run the npm install command:

    npm install hubot-ascii

And then add the script to the `external-scripts.json` file:

    ["hubot-ascii"]

## Usage

    hubot ascii me <query>
