
import pyecharts
from pyecharts.charts import Map
#from pyecharts import Map
value = [121,31,74,113,212,56,34,
         66,128,31,51,13,24,1,
         254,114,127,725,72,10,15,
         259,566,408,271,203,724,391,
        179,46,312,521,11177,2]
province = ["黑龙江", "吉林", "辽宁", "河北","北京","天津","内蒙古",
            "山西", "陕西", "宁夏", "甘肃","青海","新疆","西藏",
            "四川", "云南", "广西", "广东","海南","台湾","香港",
            "山东", "河南", "安徽", "江苏","上海","浙江","江西",
            "福建", "贵州", "重庆", "湖南","湖北","澳门"]
people = Map("全国确诊人数", width=600, height=600)
people.add("人口：人", province, value, 
    maptype='china', 
    is_label_show=True,
    is_visualmap=True,
visual_range=[0,800]) 