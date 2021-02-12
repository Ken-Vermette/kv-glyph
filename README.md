# ![KV Parallax](./kv-glyph.svg)
A font-based collection of icons

----
## Getting Started
### Installation
If you don't need to modify the options then this is the reccomended version to 
use.

1. Download the glyph package. Copy `kv-glyph.css` and `kv-glyph.ttf` into the
   desired path.
2. Add the stylesheet to your website.
```html
<link rel='stylesheet' href='path/to/kv-glyph.css' type='text/css' media='all' />
```
3. Ready! 🎉

## Usage

Add the class `kvg` and `kvg-class-of-glyph` to a given element. The glyph will
be added as a `:before` pseudo-element. 

```html
<button id="my-bookmark-button" class="kvg kvg-symbol__bookmark">Bookmark</button>
```

Alternatively, you may add glyphs by directly referencing the font family 
`KV Glyph` and using the individual characters. For a reference of characters
you may go to http://kver.ca/kv-glyph/.

```css
#my-bookmark-button:before {
	font-family: "KV Glyph";
	content: "\e991";
}
```