## Adding a New Widget
1. Open the configuration file.  
2. Add a widget under a page and column:

```yaml
pages:
  - name: Home
    columns:
      - size: full
        widgets:
          - type: reddit
            title: r/technology
            subreddit: technology
            show-thumbnails: true
```

3. Save the file and refresh the dashboard.  

> 💡 Tip: You can add multiple widgets to the same column or different columns for layout flexibility.
