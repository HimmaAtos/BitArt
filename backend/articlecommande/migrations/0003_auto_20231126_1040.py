# Generated by Django 3.2.10 on 2023-11-26 10:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articlecommande', '0002_articlecommande_commande'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='articlecommande',
            name='transitionId',
        ),
        migrations.AddField(
            model_name='articlecommande',
            name='quantite',
            field=models.IntegerField(default=1),
        ),
        migrations.AddField(
            model_name='articlecommande',
            name='transitionVendeur',
            field=models.CharField(blank=True, max_length=255),
        ),
    ]
