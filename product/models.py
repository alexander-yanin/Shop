from django.db import models

# Create your models here.
class Category(models.Model):
    name = models.CharField(max_length=50)
    
    def __str__(self):
        return self.name


class Product(models.Model):
    category = models.ForeignKey(Category)
    name = models.CharField(max_length=50)
    count = models.IntegerField(default=0)
    description = models.TextField(blank=True)
    price = models.FloatField(default=0.0)
    main_img = models.ImageField(blank=True)

    def __str__(self):
        return self.name


class ImageProduct(models.Model):
    product = models.ForeignKey(Product, blank=True, null=True)
    path = models.ImageField(blank=True)
    name = models.CharField(max_length=100, blank=True)

    def __str__(self):
        return self.name


class Cart(models.Model):
    product = models.ForeignKey(Product)
    price = models.FloatField()
    count = models.IntegerField(default=1)
    user_ip = models.CharField(max_length=50)

    def __str__(self):
        return self.user_ip


class Application(models.Model):
    fio = models.CharField(max_length=100)
    phone = models.CharField(max_length=50)
    mail = models.EmailField(blank=True)
    product = models.ForeignKey(Product)
    count = models.IntegerField()
    sum_order = models.FloatField()
    datetime = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s (%s)' % (self.mail, self.datetime)
