<template>

	<nav class="navbar navbar-default navbar-static-top">
		  <div class="container">
			<div class="navbar-header">
			
			  <router-link class="navbar-brand" to="/">Vue-SPA</router-link>
			  
			</div>
			
			<div class="collapse navbar-collapse">
			
			  <ul class="nav navbar-nav navbar-right">
				  <router-link to="/login" tag="li">
					  <a>登录</a>
				  </router-link>
				  <router-link to="/register" tag="li">
					  <a>注册</a>
				  </router-link>
			  </ul>
			  
			</div>
			
		  </div>
	  </nav>
	
</template>

<script>
	
    export default {
	
    }
</script>
