git-kurs
========

git-kurs for abakus 5. februar

Foreslår å bruke remark.js, som på forrige kurs.

## Remark tips

_Disable vimium!_

Press 'p' to enter presentation mode. Will show slide notes and preview of next slide.

Press 'c' to open presentation window. This window can be shown on a projector and will stay in sync with the main window.

# Jekyll

## Setup

**Prerequisites:** ruby, rubygems and bundler.

If you don't want to fiddle with these, and only care about the slides, go into the slides folder, and work from there as normal.

```
bundle install
```

## Usage

```
make run
```

**Note:** All URLs should be relative to the project root, NOT absolute. This ensures that links will work when it is hosted in a subfolder.
