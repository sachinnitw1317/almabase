from __future__ import unicode_literals

from django.db import models

# Create your models here.

class Games(models.Model):
	title = models.CharField(max_length=100)
	platform = models.CharField(max_length=100)
	score = models.FloatField()
	genre = models.CharField(max_length=100)
	editors_choice = models.CharField(max_length=1)\

	def __unicode__(self):
	    return self.title

