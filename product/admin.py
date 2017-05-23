from django.contrib import admin
from .models import Category, Product, ImageProduct, Cart, Application

# Register your models here.
class ApplicationAdmin(admin.ModelAdmin):
    readonly_fields = ('fio', 'phone', 'mail', 'product', 'count', 'sum_order',)

admin.site.register(Category)
admin.site.register(Product)
admin.site.register(ImageProduct)
admin.site.register(Application, ApplicationAdmin)
