# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-24 12:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0005_auto_20170324_1158'),
    ]

    operations = [
        migrations.AlterField(
            model_name='imageproduct',
            name='path',
            field=models.ImageField(blank=True, upload_to=''),
        ),
        migrations.AlterField(
            model_name='product',
            name='main_img',
            field=models.ImageField(blank=True, upload_to=''),
        ),
    ]
