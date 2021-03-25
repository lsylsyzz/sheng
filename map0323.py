from pyecharts.charts import Geo
from pyecharts.globals import ChartType, SymbolType
from pyecharts import options as opts #引入配置项入口

geo = (
Geo()
	.add_schema(maptype="china")
	.add("",
        [("广州", 100)]
        )
	.set_series_opts(label_opts=opts.LabelOpts(is_show=False))
	.set_global_opts(
		visualmap_opts=opts.VisualMapOpts(),
		title_opts=opts.TitleOpts(title="Geo地图示例"),
	)
)
geo.render("测试.html")
geo.render_notebook()

