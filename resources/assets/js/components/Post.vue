<template>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
					
						<h4>{{ posts.title }}</h4>
					
					</div>

                    <div class="panel-body">
						<div class="bs-callout bs-callout-danger">
							<p>{{ posts.body }}</p>
						</div>
					</div>
					
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
		data() {
			return {
				posts: {}
			}
		},
        mounted() {
		
			axios.get('/api/posts/'+this.$route.params.id).then(response => {
		
					this.posts = response.data;
				
			});
			
        }
    }
</script>
