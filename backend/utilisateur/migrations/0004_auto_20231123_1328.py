# Generated by Django 3.2.10 on 2023-11-23 13:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('utilisateur', '0003_auto_20231116_1643'),
    ]

    operations = [
        migrations.AddField(
            model_name='utilisateur',
            name='image',
            field=models.ImageField(default='images/image.jpg', upload_to=''),
        ),
        migrations.AlterField(
            model_name='utilisateur',
            name='profil',
            field=models.CharField(default='Acheteur', max_length=255),
        ),
    ]
