# Generated by Django 3.2.5 on 2021-07-28 23:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orderApp', '0002_auto_20210725_1523'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='shipping_charge',
            field=models.DecimalField(blank=True, decimal_places=2, default=50.0, max_digits=5, max_length=100, null=True),
        ),
    ]
