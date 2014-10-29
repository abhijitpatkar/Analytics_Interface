from tastypie.resources import ModelResource
from tastypie.constants import ALL
from models import *

class CandidateInformation(ModelResource):
    class Meta:
        queryset=mst_candidates.objects.all()
        resource_name='candidate'
        filtering={
            "cand_gender":ALL,
            "cand_cour_name":ALL
        }
