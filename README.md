# Pinafore

Pinafore is a REST and websocket-based hexagonal map service. Clients can set
metadata on tiles, subscribe to messages sent to tiles, and subscribe
to changes in the metadata on tiles.

# Current Status
Defining the REST interface.

# REST interface
|Endpoint|Action|Example|Description|
|--------|------|-------|-----------|
|/map/Q,R|GET|/map/0,4|get the metadata at location 0, 4|
|/map/Q,R/metadata/K|PUT|/map/0,4/metadata/mykey|update the value associated with mykey at 0,4|
|/map/Q,R/message|POST||create and send a message|
|/map/Q,R?radius=Radius|GET|/map/0,4?radius=2|get metadata for all tiles within two tiles of 0, 4|
|/map/Q,R/subscribe|POST|/map/0,4/subscribe|create subscription to metadata changees or messages to 0, 4|

Metadata is key, value pairs.

The server pushes metadata changes or messages via websocket.

## References

  * Hexagonal grids: http://www.redblobgames.com/grids/hexagons/

# Building and Starting

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
