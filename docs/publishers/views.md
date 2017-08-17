# Views

[TOC]

# Introduction

Producers and consumers of data want to have data presented in tables and graphs -- "views" on the data. They want this for a range of reasons, from simple eyeballing to drawing out key insights,

<div class="mermaid">
graph LR
  data[Your Data] --> table[Table]
  data --> grap[Graph]
  data --> geo[Map]
</div>

This guide shows you how you can create beautiful views for your data on the DataHub.

# Features

* Simple things are simple: adding a bar chart or line chart is fast and easy -- seconds to do and requiring minimal knowledge. Views are created in a simple declarative syntax
* Powerful and extensible: complex and powerful graphing is also powerful.
* Reuse: leverage the power of existing specs like [Vega][] (and tools like Vega and Plotly)
* Transform your data prior to visualization
* Composable: the views spec is independent but composable with other data package specs (and even usable on its own)

# How it works

You can add a view for your data simply by describing your view in a simple declarative syntax (in JSON) and then adding to the `datapackage.json` for your dataset.

For example, suppose you have data in a csv that looks like this:

| x | y | z |
|---|---|---|
| 1 | 8 | 5 |
| 2 | 9 | 7 |

Then you could describe your view like this:

```javascript
{
  "type": "line",
  "group": "x",
  "series": [ "y", "z" ]
}
```

Finally, you need to connect your view with the underlying data source in the `datapackage.json`

```
...
"resources": [{
	"name": "mydata"
	"path": "mydata.csv",
	"schema": ... schema for the 
}]
views: [{
	"name": "graph-1",
	"title": "My awesome view"

	// the data to connect to this view
	"resources": ["mydata"]

	// specType here is optional as simple is the default
	"specType": "simple"
	"spec": {
		"type": "line",
		"group": "x",
		"series": [ "y", "z" ]
	}
}}
```

To learn more see the examples live examples below.

# Examples

In this section, examples of using Data Package views are provided. Each example has a README section with small tutorial.

## Simple graph spec

Simple graph spec is the easiest and quickest way to specify a view in a Data Package. Using simple graph spec publishers can generate graphs, e.g., line and bar charts.

* [Simple Graph Spec Tutorial][ex-simple]

[ex-simple]: https://datahub.io/examples/simple-graph-spec)

### Vega graphs

Publishers can also describe graphs using Vega specifications:

* [Vega Graph Spec Tutorial - Yields of Barley](https://datahub.io/examples/vega-views-tutorial-grouping)
* [Vega Graph Spec Tutorial - US presidents](https://datahub.io/examples/vega-views-tutorial-lines)
* [Vega Graph Spec Tutorial - US Airports](https://datahub.io/examples/vega-views-tutorial-topojson)

### Maps

At the moment, we only support `.geojson` format:

* [GeoJSON Tutorial](https://datahub.io/examples/geojson-tutorial)

### Tables and Transforms

In the following examples, we demonstrate how transforms can be used in Data Package views. Transformed data will be displayed as table views.

* [Filter & Formula](https://datahub.io/examples/transform-examples-on-co2-fossil-global)
* [Sample](https://datahub.io/examples/example-sample-transform-on-currency-codes)
* [Aggregate](https://datahub.io/examples/transform-example-gdp-uk)

# More Information

* [Details of how the tooling works are in Views Developer guide][views-dev]
* [Views spec (draft)][views-spec]

[views-dev]: /developers/views/
[views-spec]: https://specs.frictionlessdata.io/views/

