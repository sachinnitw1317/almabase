from django.shortcuts import get_object_or_404, render, redirect
from django.http import HttpResponseRedirect, HttpResponse
from django.http import Http404
from django.core.urlresolvers import reverse
from django.contrib.auth.models import User,UserManager,AbstractBaseUser
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required,user_passes_test
import json
from django.http import JsonResponse
from json import dumps, loads
from .models import *
# Create your views here.

def register(request):
	response = {}
	if request.method == 'POST' :
		name = request.POST['name']
		username = request.POST['username']
		pass1 = request.POST['password1']
		pass2 = request.POST['password2']

		if pass1 != pass2 :
			response['message'] = 'password does not match'
			return render(request,'login/register.djt',response)

		user = User()
		user.first_name = name
		user.username = username
		user.set_password(pass1)
		try:
			user.save()
			return render(request,'login/login.djt',response)
		except :
			response['message'] = "username already exists"
			return render(request,'login/register.djt',response)
	return render(request,'login/register.djt',response)


def signin(request):
	response={}
	if request.method == 'POST' :
		username = request.POST['username']
		password = request.POST['password']
		user = authenticate(username=username, password=password)
		if user is not None:
			login(request, user)
			print  "going to dashboard"
			return redirect('/homepage/1')
		else:
		    response['message']='User is not registered / Password Incorrect'
	return render(request,'login/login.djt',response)

def signout(request):
	logout(request)
	return redirect('/')

def homepage(request,tag):
	name = request.user.username
	response = {}
	start = (int(tag)-1)*9+1
	end = start+8
	response['games'] = Games.objects.filter(id__range=(start,end))
	response['url'] = "homepage"
	return render(request,'login/home.djt',response)

def search(request):
	response = {}
	title = request.POST['search_key']
	response['games'] = Games.objects.filter(title__icontains=title)
	response['text'] = title;
	return render(request,'login/home.djt',response)

def sort_asc(request,tag):
	response = {}
	start = (int(tag)-1)*9+1
	end = start+8
	response['games'] = Games.objects.order_by('score').filter(id__range=(start,end))
	response['url'] = "sort_asc"
	return render(request,'login/home.djt',response)

def sort_desc(request,tag):
	response = {}
	start = (int(tag)-1)*9+1
	end = start+8
	response['games'] = Games.objects.order_by('-score').filter(id__range=(start,end))
	response['url'] = "sort_desc";
	return render(request,'login/home.djt',response)

def complete(request):
	if request.is_ajax():
		q = request.GET.get('term', '')
		result_list = Games.objects.filter(title__icontains = q )[:20]
		results = []
		for field in result_list:
			field_json = {}
			field_json['id'] = field.id
			field_json['value'] = field.title
			results.append(field_json)
		data = json.dumps(results)
	mimetype = 'application/json'
	return HttpResponse(data, mimetype)

def platform(request,tag):
	response = {}
	start = (int(tag)-1)*9+1
	end = start+8
	response['games'] = Games.objects.order_by('platform').filter(id__range=(start,end))
	response['url'] = "platform";
	return render(request,'login/home.djt',response)