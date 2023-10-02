Every function has a link to the official documentation. If a function has no link, there is no documentation for it.

## Search for objects
[.getObjectFromGUID(string)](https://api.tabletopsimulator.com/base/#getobjectfromguid): returns a specific object so you can operate on it.

.getObjectsWithTag(string): returns all objects with specified tag. (Ícaro: It may only work with Global.getObjectsWithTag(string). Needs more research.)

## Containers
[.getObjects()](https://api.tabletopsimulator.com/object/#getobjects): returns all objects inside the container.

#### Deck and Bag
[.takeObject()](https://api.tabletopsimulator.com/object/#takeobject): takes an object and puts it on the table. It returns the object so you can operate on it.
