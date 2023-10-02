Every function has a link to the official documentation except if there is no documentation for it.

Functions are meant to work inside an object although not specified. 'Global' is a static class of Tabletop Simulator that contains all other objects, but you can narrow your operations with containers like: decks, bags and zones.

Code example:
```LUA
local deck = Global.getObjectFromGUID('12db6') -- from all objects, returns the one that has the specified GUID
local card = deck.takeObject() -- from the objects inside the 'deck' container, return the top one.
-- Every Tabletop Simulator's object has this structure: https://api.tabletopsimulator.com/object/
```

## Search for objects
[.getObjectFromGUID(string)](https://api.tabletopsimulator.com/base/#getobjectfromguid): returns a specific object so you can operate on it.

.getObjectsWithTag(string): returns all objects with specified tag. (Ícaro: It may only work with Global.getObjectsWithTag(string) and no other container. Needs more research.)

## Containers
[.getObjects()](https://api.tabletopsimulator.com/object/#getobjects): returns all objects inside the container.

#### Deck and Bag
[.takeObject()](https://api.tabletopsimulator.com/object/#takeobject): takes an object and puts it on the table. It returns the object so you can operate on it.
