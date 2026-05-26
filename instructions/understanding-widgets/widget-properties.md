## Widget Properties

Widgets in Glance have **shared configurable properties** that apply to all widget types. These properties allow you to control how widgets are displayed, what data they show, and how often they refresh.

### Shared Properties

| Name        | Type    | Required | Description |
|------------|---------|---------|-------------|
| `type`      | string  | yes     | Specifies the widget type (e.g., `rss`, `reddit`, `markets`). |
| `title`     | string  | no      | The display name of the widget. If left blank, the widget may define a default title. |
| `title-url` | string  | no      | The URL to open when clicking the widget’s title. Defaults depend on the widget. |
| `hide-header` | boolean | no    | Hides the header (title) when set to `true`. Note: You cannot hide the header of the **group widget**. If the header is hidden, error indicators (red dots) may not be visible. |
| `cache`     | string  | no      | How long to keep the fetched data in memory. Format: number + `s`, `m`, `h`, or `d`. Examples: `30s`, `5m`, `2h`, `1d`. Not all widgets allow cache modification (e.g., calendar and weather widgets update on the hour). |
| `css-class` | string  | no      | Assign custom CSS classes to the widget for styling purposes. |

---

### Example: RSS Widget

```yaml
- type: rss
  title: Tech News
  limit: 5
  feeds:
    - https://feeds.arstechnica.com/arstechnica/index
  cache: 10m
  hide-header: false
  css-class: my-custom-widget
```

### Notes
- **`type`** is always required to tell Glance which widget to render.  
- **`title-url`** allows making the widget header clickable.  
- **`hide-header`** is useful for compact layouts but may hide important error indicators.  
- **`cache`** helps reduce requests to external sources, improving performance.  
- **`css-class`** allows advanced customization if you want to apply custom CSS to a single widget.

> [!NOTE]
> Use these shared properties for **all widgets**, then add type-specific properties (like `feeds` for RSS or `subreddit` for Reddit) to fully configure each widget.
