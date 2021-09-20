from django.db import models
from django.contrib.auth import get_user_model

# Create your models here.
class Run(models.Model):
  # define fields
  # https://docs.djangoproject.com/en/3.0/ref/models/fields/
  distance = models.DecimalField(max_digits=3, decimal_places=2)
  shoe = models.CharField(max_length=100)
  difficult = models.BooleanField()
  owner = models.ForeignKey(
      get_user_model(),
      on_delete=models.CASCADE
  )

  def __str__(self):
    # This must return a string
    return f"The run was '{self.distance}' miles, ran in {self.shoe}. It was {self.difficult} that it was difficult."

  def as_dict(self):
    """Returns dictionary version of Run models"""
    return {
        'id': self.id,
        'distance': self.distance,
        'difficult': self.difficult,
        'shoe': self.shoe
    }
