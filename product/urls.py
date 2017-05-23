from django.conf.urls import url
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf.urls.static import static
from django.conf import settings
from . import views

app_name = 'product'
urlpatterns = [
    url(r'^cart/$', views.cart, name='cart'),
    url(r'^category/(?P<filt>\w+)/$', views.home, name='home_filt'),
    url(r'^page/(?P<page>\d+)/$', views.home, name='home_pag'),
    url(r'^$', views.home, name='home'),
    url(r'product/(?P<pk>\d+)/$', views.prod_page, name="prod_page"),
]


if settings.DEBUG:
    urlpatterns += staticfiles_urlpatterns() + static(
        settings.MEDIA_URL, document_root=settings.MEDIA_ROOT
    )    
