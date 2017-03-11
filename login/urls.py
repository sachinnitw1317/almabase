from django.conf.urls import include, url
from . import views

app_name = 'login'
urlpatterns = [
	url(r'^register/$', views.register,name='register'),
	url(r'^$',views.signin,name='signin'),
	url(r'^signout/$',views.signout,name='signout'),
	url(r'^homepage/(?P<tag>[0-9]+)/$',views.homepage,name='homepage'),
	url(r'^search/$',views.search,name='search'),
	url(r'^sort_asc/(?P<tag>[0-9]+)/$',views.sort_asc,name='sort_asc'),
	url(r'^sort_desc/(?P<tag>[0-9]+)/$',views.sort_desc,name='sort_desc'),
	url(r'^api/complete/$',views.complete,name='complete'),
	url(r'^platform/(?P<tag>[0-9]+)/$',views.platform,name='platform'),

]