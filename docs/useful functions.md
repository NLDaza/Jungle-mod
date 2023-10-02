Every function has a link to the official documentation. If a function has no link, there is no documentation for it.

Functions are meant to work inside an object although not specified. For example, 'Search for objects' functions work with the object 'Global' but all functions inside 'Container' need an container object like a deck, a bag, a zone or 'Global'. 

Example:
local deck = Global.getObjectFromGUID('12db6') -- 'Global' is a static class of Tabletop Simulator
local card = deck.takeObject() -- We filled the object 'deck' in the above line giving it [this structure](https://api.tabletopsimulator.com/object/)

## Search for objects
[Global.getObjectFromGUID(string)](https://api.tabletopsimulator.com/base/#getobjectfromguid): returns a specific object so you can operate on it.

Global.getObjectsWithTag(string): returns all objects with specified tag. (Ícaro: It may only work with Global.getObjectsWithTag(string) and no other container. Needs more research.)

## Containers
[.getObjects()](https://api.tabletopsimulator.com/object/#getobjects): returns all objects inside the container.

#### Deck and Bag
[.takeObject()](https://api.tabletopsimulator.com/object/#takeobject): takes an object and puts it on the table. It returns the object so you can operate on it.
