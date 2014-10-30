from django.db import models

# Create your models here.
class mst_candidates(models.Model):
    cand_id = models.AutoField(primary_key=True)
    cand_registration_number = models.CharField(max_length=10,null=False,blank=False)
    cand_fname = models.CharField(max_length=30,null=False,blank=False)
    cand_mname = models.CharField(max_length=30,null=True)
    cand_lname = models.CharField(max_length=30,null=False,blank=False)
    cand_email = models.CharField(max_length=150,null=False,blank=False)
    cand_phone = models.CharField(max_length=30,null=True)
    cand_mobile = models.CharField(max_length=15,null=True)
    cand_name_for_address = models.CharField(max_length=100,null=True)
    cand_address = models.CharField(max_length=500,null=True,blank=True)
    cand_pincode = models.CharField(max_length=10,null=True)
    cand_cour_name= models.CharField(max_length=20,null=True)
    cand_gender = models.CharField(max_length=1,null=True)
    cand_date_of_birth = models.DateTimeField(auto_now_add=False,null=True)
    cand_application_datetime = models.DateTimeField(auto_now_add=True,null=False,blank=False)
    cand_sample_age=models.IntegerField(null=True,blank=True)


