## Adding a New Widget

Let's open the `glance.yaml` file within `/app/config`. You can see that there are multiple widgets, each of them in a column.

The syntax looks like

```yaml
widgets:
	- type: reddit
		title: r/technology
		subreddit: technology
		show-thumbnails: true
```

> 💡 Tip: You can add multiple widgets to the same column or different columns for layout flexibility.

<instruqt-task id="check-widgets"></instruqt-task>
