## Widget Properties
Widgets have configurable properties:  

- `title` → Display name for the widget  
- `limit` → Number of items to show  
- `feeds`, `subreddit`, `channel` → Content source  
- `show-thumbnails` → Enable/disable images  

### Example
```yaml
- type: rss
  title: Tech News
  limit: 5
  feeds:
    - https://feeds.arstechnica.com/arstechnica/index
```
