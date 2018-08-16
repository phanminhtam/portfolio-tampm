from django.db import models


class BaseModel(models.Model):
    is_enabled = models.BooleanField(null=False, blank=False, default=True)

    created_at = models.DateTimeField(auto_now_add=True, auto_now=False, editable=False)
    updated_at = models.DateTimeField(auto_now=True, editable=True)
