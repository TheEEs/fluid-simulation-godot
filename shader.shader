shader_type canvas_item;
render_mode unshaded;

void fragment(){
	vec4 color = texture(TEXTURE,UV);
	color += texture(TEXTURE, UV + vec2(-0.05,-0.05));
	color += texture(TEXTURE, UV + vec2(0,-0.05));
	color += texture(TEXTURE, UV + vec2(.05,-0.05));
	
	color += texture(TEXTURE, UV + vec2(-.05,0));
	color += texture(TEXTURE, UV + vec2(.05,0));
	
	color += texture(TEXTURE, UV + vec2(-0.05,.05));
	color += texture(TEXTURE, UV + vec2(0,.05));
	color += texture(TEXTURE, UV + vec2(.05,.05));
	
	color = color/9f;
	COLOR = color;
}