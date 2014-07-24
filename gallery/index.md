---
layout: page
index: 3
title: photos
---
{% capture photo_data %}
animals:Animals:
2011-08-02_11-01-16.JPG,
2011-10-08_15-46-46.JPG,
2011-10-08_22-24-40.JPG,
2011-10-11_00-49-45.JPG,
2011-10-11_16-10-29.JPG,
2011-11-23_10-04-17.JPG

=buildings:Buildings:
2011-01-03_16-53-40.jpg,
2011-01-08_17-12-30.jpg,
2011-04-15_13-50-07.jpg,
2011-06-13_16-08-59.JPG,
2011-08-01_15-07-15.JPG,
2011-08-13_17-55-38.JPG,
2011-08-20_18-48-30.JPG,
2011-08-20_18-56-45.JPG,
2011-08-20_19-14-39.JPG,
2011-08-21_15-46-59.JPG,
2011-10-09_22-44-19.JPG,
2011-10-11_18-00-18.JPG,
2011-10-11_19-44-52.JPG,
2011-10-11_20-03-45.JPG,
2011-11-20_16-48-10.JPG,
2011-11-28_16-54-51.JPG,
2011-12-16_16-06-40.JPG,
2012-02-27_20-26-09.JPG,
2012-04-27_11-15-22.JPG,
2012-05-19_15-34-05.JPG

=flowers and plants:Flowers and Plants:
2011-04-11_16-27-28.JPG,
2011-04-15_13-51-32.jpg,
2011-04-15_13-58-58.jpg,
2011-04-15_13-59-23.jpg,
2011-04-15_14-08-18.jpg,
2011-04-17_18-00-19.jpg,
2011-04-18_12-19-36.jpg,
2011-07-28_20-15-57.JPG,
2011-08-02_12-56-42.JPG,
2011-08-20_19-13-08.JPG,
2011-08-27_18-09-25.JPG,
2011-08-27_19-20-20.JPG,
2011-10-07_16-51-24.JPG,
2011-10-10_19-24-58.JPG,
2011-10-11_17-57-32.JPG,
2011-10-12_17-21-46.JPG,
2011-10-22_14-17-28.JPG,
2012-03-09_15-42-20.JPG,
2012-04-01_17-25-56.JPG,
2012-04-01_17-36-26.JPG,
2012-05-18_16-44-21.JPG,
2012-05-19_17-41-40.JPG,
2012-05-19_18-07-58.JPG,
2012-05-19_18-11-59.JPG

=fun stuff:Fun Stuff:
2011-04-15_13-18-30.jpg,
2011-08-21_16-27-17.JPG,
2011-10-12_17-59-54.JPG,
2012-01-17_19-30-25.JPG,
2012-02-27_17-46-33.JPG,
2012-03-09_15-44-57.JPG,
2012-05-19_17-42-21.JPG,
2012-05-20_15-41-48.JPG,
2012-05-20_16-38-17.JPG

=landscapes:Landscapes:
2011-04-15_13-15-42.jpg,
2011-08-01_16-13-59.JPG,
2011-09-03_12-55-01.JPG,
2011-10-11_18-44-53.JPG,
2011-10-22_13-14-19.JPG,
2011-11-13_12-09-10.JPG

=nightlife:Nightlife:
2011-09-03_22-54-56.JPG,
2011-10-08_02-49-28.JPG,
2011-10-08_03-07-54.JPG,
2011-10-08_03-27-15.JPG,
2011-10-09_02-11-55.JPG,
2011-10-09_07-47-09.JPG

=people and situations:People and Situations:
2011-07-31_14-29-25.JPG,
2011-08-01_15-21-31.JPG,
2011-08-20_18-45-15.JPG,
2011-10-10_00-47-13.JPG,
2011-10-10_00-51-09.JPG,
2011-10-12_19-27-16.JPG

=water and sky:Water and Sky:
2011-01-03_15-49-56.jpg,
2011-01-03_15-58-58.jpg,
2011-01-08_17-08-20.jpg,
2011-04-15_13-27-31.jpg,
2011-06-14_14-41-52.JPG,
2011-07-30_20-11-44.JPG,
2011-09-03_17-11-43.JPG,
2011-09-03_20-18-48.JPG,
2011-10-11_21-49-42.JPG

{% endcapture %}
{% assign all_category_data = photo_data | strip_newlines | split: '=' %}
{% for entry in all_category_data %}
{% assign category_data = entry | split: ':' %}
{% assign category_path = '/photos/' | append: category_data[0] | append: '/' %}
{% assign category_name = category_data[1] %}
{% assign category_photos = category_data[2] | split: ',' %}
### {{ category_name }}
{% for photo in category_photos %}{% comment %}
{% endcomment %}{% assign photo_path = category_path | append: photo %}{% comment %}
{% endcomment %}{% assign thumbnail_path = category_path | append: 'thumbs/' | append: photo %}
<a class="fancybox" rel="{{ category_name }}" href="{{ photo_path }}"><img src="{{ thumbnail_path }}" class="thumbnail" /></a>{% comment %}
{% endcomment %}{% endfor %}
{% endfor %}
