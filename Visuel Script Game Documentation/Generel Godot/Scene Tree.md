Manages the game loop via a hierarchy of nodes.

## Description[](https://docs.godotengine.org/en/stable/classes/class_scenetree.html#description "Link to this heading")

As one of the most important classes, the **SceneTree** manages the hierarchy of nodes in a scene, as well as scenes themselves. Nodes can be added, fetched and removed. The whole scene tree (and thus the current scene) can be paused. Scenes can be loaded, switched and reloaded.

You can also use the **SceneTree** to organize your nodes into **groups**: every node can be added to as many groups as you want to create, e.g. an "enemy" group. You can then iterate these groups or even call methods and set properties on all the nodes belonging to any given group.

**SceneTree** is the default [MainLoop](https://docs.godotengine.org/en/stable/classes/class_mainloop.html#class-mainloop) implementation used by the engine, and is thus in charge of the game loop.