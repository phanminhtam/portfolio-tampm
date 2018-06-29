from django.shortcuts import render
import json
from aldryn_apphooks_config.mixins import AppConfigMixin
from django.views import generic
from django.shortcuts import get_object_or_404, render

# get youtube video id
from urllib.parse import urlparse, parse_qs

from .models import Project, Tag, MediaAsset


# Create your views here.
class ProjectIndexView(AppConfigMixin, generic.ListView):
    model = Project
    template_name = 'portfolio_app/index_remake.html'

    def get_queryset(self):
        qs = super(ProjectIndexView, self).get_queryset()
        return qs

    def get_paginate_by(self, queryset):
        try:
            return self.config.paginate_by
        except AttributeError:
            return 10

    def get_context_data(self, **kwargs):
        context = super(ProjectIndexView, self).get_context_data(**kwargs)

        tags = Tag.objects.all()
        context['tags'] = tags

        # Remove all unpublished project
        object_list = Project.objects.filter(is_published=True, is_list_display=True)
        context['object_list'] = object_list

        return context


class ProjectDetailView(AppConfigMixin, generic.DetailView):
    model = Project
    template_name = 'portfolio_app/project_detail.html'
    slug_field = 'slug'

    def get_context_data(self, **kwargs):
        context = super(ProjectDetailView, self).get_context_data(**kwargs)
        object = context['object']

        # list project id to not make previous and next same project
        project_exclude_id = [object.id]
        # Get the next project
        next_project = Project.objects.filter(updated_at__gte=object.updated_at) \
            .order_by('updated_at').exclude(id__in=project_exclude_id)

        if next_project.exists():
            next_project = next_project.first()
            project_exclude_id.append(next_project.id)
        else:
            next_project = None

        context['next_project'] = next_project
        # end get next project

        # Get previous project
        previous_project = Project.objects.filter(updated_at__lte=object.updated_at) \
            .order_by('-updated_at').exclude(id__in=project_exclude_id)

        if previous_project.exists():
            previous_project = previous_project.first()
        else:
            previous_project = None

        # add to context
        context['previous_project'] = previous_project
        context['next_project'] = next_project
        return context
